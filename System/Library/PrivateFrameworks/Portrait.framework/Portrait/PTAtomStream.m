@interface PTAtomStream
- (BOOL)hasAtom;
- (PTAtomStream)initWithByteStream:(id)a3 offset:(unint64_t)a4;
- (PTAtomStream)initWithParent:(id)a3 offset:(unint64_t)a4;
- (id)_errorForReadPastLimit:(unint64_t)a3 size:(unint64_t)a4 offset:(unint64_t)a5;
- (id)debugDescription;
- (uint64_t)_readAtomHeader;
- (void)_debugLogAtomReaderState;
- (void)_debugLogBytes:(const void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5;
- (void)_readAtomHeader;
- (void)_readBytes:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5;
- (void)_setEndOfStream;
- (void)_setErrorForByteStreamIfNeeded;
- (void)advanceToNextAtom;
- (void)readCurrentAtomDataBytes:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5;
- (void)readCurrentAtomVersionAndFlags;
- (void)setError:(id)a3;
@end

@implementation PTAtomStream

- (PTAtomStream)initWithByteStream:(id)a3 offset:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PTAtomStream;
  v8 = [(PTAtomStream *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_byteStream, a3);
    v9->_globalAtomOffset = a4;
    v9->_globalEndOffset = [v7 size];
    [(PTAtomStream *)v9 _readAtomHeader];
  }

  return v9;
}

- (PTAtomStream)initWithParent:(id)a3 offset:(unint64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = PTAtomStream;
  v8 = [(PTAtomStream *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_parentStream, a3);
    v10 = [v7 byteStream];
    byteStream = v9->_byteStream;
    v9->_byteStream = v10;

    v9->_globalAtomOffset = [v7 globalAtomDataOffset] + a4;
    v12 = [v7 globalAtomOffset];
    v9->_globalEndOffset = [v7 atomSize] + v12;
    [(PTAtomStream *)v9 _readAtomHeader];
  }

  return v9;
}

- (BOOL)hasAtom
{
  v3 = [(PTAtomStream *)self error];
  if (v3)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(PTAtomStream *)self isAtEndOfStream];
  }

  return v4;
}

- (void)readCurrentAtomVersionAndFlags
{
  if (!self->_error)
  {
    v7 = v2;
    v8 = v3;
    if (!self->_didReadAtomVersionAndFlags)
    {
      v6 = 0;
      [(PTAtomStream *)self readCurrentAtomDataBytes:&v6 size:4 offset:0];
      v5 = bswap32(v6);
      v6 = v5;
      self->_atomVersion = HIBYTE(v5);
      self->_atomFlags = v5 & 0xFFFFFF;
      self->_atomDataOffset += 4;
      self->_didReadAtomVersionAndFlags = 1;
      [(PTAtomStream *)self _debugLogAtomReaderState];
      [(PTAtomStream *)self _setErrorForByteStreamIfNeeded];
    }
  }
}

- (void)readCurrentAtomDataBytes:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5
{
  if (!self->_error)
  {
    [(PTAtomStream *)self _readBytes:a3 size:a4 offset:[(PTAtomStream *)self globalAtomDataOffset]+ a5];
    [(PTAtomStream *)self _debugLogAtomReaderState];

    [(PTAtomStream *)self _setErrorForByteStreamIfNeeded];
  }
}

- (void)advanceToNextAtom
{
  if (!self->_error)
  {
    v9 = v2;
    globalEndOffset = self->_globalEndOffset;
    v8 = self->_globalAtomOffset + self->_atomSize;
    self->_globalAtomOffset = v8;
    if (v8 >= globalEndOffset)
    {
      [(PTAtomStream *)self _setEndOfStream];
    }

    else
    {
      [(PTAtomStream *)self _readAtomHeader];
    }

    [(PTAtomStream *)self _debugLogAtomReaderState:v3];

    [(PTAtomStream *)self _setErrorForByteStreamIfNeeded];
  }
}

- (void)setError:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_error, a3);
  parentStream = self->_parentStream;
  if (parentStream)
  {
    [(PTAtomStream *)parentStream setError:v6];
  }
}

- (id)debugDescription
{
  atomType = self->_atomType;
  if (atomType)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = NSStringFromFourCharCode(atomType);
    v6 = [v4 stringWithFormat:@"('%@')", v5];
  }

  else
  {
    v6 = &stru_2837D16E8;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [(PTAtomStream *)self globalAtomOffset];
  v9 = [(PTAtomStream *)self atomSize];
  v10 = [(PTAtomStream *)self atomDataOffset];
  v11 = [(PTAtomStream *)self atomDataSize];
  v12 = [(PTAtomStream *)self error];
  if (v12)
  {
    v13 = [v7 stringWithFormat:@"atom%@: { offset: %lu, size: %lu }, data: { offset: %lu, size: %lu }%@", v6, v8, v9, v10, v11, &stru_2837D16E8];
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [(PTAtomStream *)self error];
    v16 = [v14 stringWithFormat:@" (%@)", v15];
    v13 = [v7 stringWithFormat:@"atom%@: { offset: %lu, size: %lu }, data: { offset: %lu, size: %lu }%@", v6, v8, v9, v10, v11, v16];
  }

  return v13;
}

- (void)_setEndOfStream
{
  self->_atomType = 0;
  self->_atomSize = 0;
  self->_atomDataOffset = 0;
  *&self->_atEndOfStream = 1;
  self->_atomVersion = 0;
  self->_atomFlags = 0;
}

- (void)_readAtomHeader
{
  if (!self->_error)
  {
    [(PTAtomStream *)self _readAtomHeader];
  }
}

- (void)_readBytes:(void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5
{
  if (a5 + a4 <= self->_globalEndOffset)
  {
    [(PTByteStream *)self->_byteStream readBytes:a3 size:a4 offset:a5];

    [(PTAtomStream *)self _debugLogBytes:a3 size:a4 offset:a5];
  }

  else
  {
    v9 = [PTAtomStream _errorForReadPastLimit:"_errorForReadPastLimit:size:offset:" size:? offset:?];
    [(PTAtomStream *)self setError:v9];
  }
}

- (void)_setErrorForByteStreamIfNeeded
{
  v3 = [(PTByteStream *)self->_byteStream error];

  if (v3)
  {
    v5 = [(PTByteStream *)self->_byteStream error];
    v4 = [(PTAtomStream *)self _errorForByteStreamError:v5];
    [(PTAtomStream *)self setError:v4];
  }
}

- (id)_errorForReadPastLimit:(unint64_t)a3 size:(unint64_t)a4 offset:(unint64_t)a5
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"attempt to read past end %lu (offset %lu size %lu)", a3, a5, a4];;
  v6 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA590];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v6 errorWithDomain:v7 code:-19 userInfo:v8];

  return v9;
}

- (void)_debugLogBytes:(const void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5
{
  v14 = *MEMORY[0x277D85DE8];
  if (PTSerializationDebugIsEnabled())
  {
    v8 = _PTLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = NSStringFromBytes(a3, a4);
      v10 = 134218242;
      v11 = a5;
      v12 = 2112;
      v13 = v9;
      _os_log_debug_impl(&dword_2243FB000, v8, OS_LOG_TYPE_DEBUG, "r[%zd]: %@", &v10, 0x16u);
    }
  }
}

- (void)_debugLogAtomReaderState
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 debugDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_2243FB000, a2, OS_LOG_TYPE_DEBUG, "%@", &v4, 0xCu);
}

- (uint64_t)_readAtomHeader
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  [a1 _readBytes:v5 size:8 offset:*(a1 + 72)];
  v2 = [a1 error];

  if (!v2)
  {
    v3 = bswap32(v5[0]);
    *(a1 + 12) = bswap32(HIDWORD(v5[0]));
    *(a1 + 56) = v3;
    *(a1 + 64) = 8;
    *(a1 + 9) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  [a1 _debugLogAtomReaderState];
  return [a1 _setErrorForByteStreamIfNeeded];
}

@end