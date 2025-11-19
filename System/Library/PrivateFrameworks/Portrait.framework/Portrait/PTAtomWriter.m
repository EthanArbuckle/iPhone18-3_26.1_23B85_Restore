@interface PTAtomWriter
- (PTAtomWriter)initWithByteWriter:(id)a3;
- (PTAtomWriter)initWithParent:(id)a3;
- (id)_errorForSize:(unint64_t)a3;
- (id)_errorForVersion:(unint64_t)a3;
- (id)debugDescription;
- (void)_appendBytes:(const void *)a3 size:(unint64_t)a4;
- (void)_debugLogAtomWriterState;
- (void)_debugLogBytes:(const void *)a3 size:(unint64_t)a4;
- (void)_debugLogBytes:(const void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5;
- (void)_setErrorForByteWriterIfNeeded;
- (void)_writeBytes:(const void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5;
- (void)appendBytes:(const void *)a3 size:(unint64_t)a4;
- (void)appendVersion:(unint64_t)a3 flags:(unint64_t)a4;
- (void)beginAtomOfType:(unsigned int)a3;
- (void)endAtom;
- (void)setError:(id)a3;
@end

@implementation PTAtomWriter

- (PTAtomWriter)initWithByteWriter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PTAtomWriter;
  v6 = [(PTAtomWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_byteWriter, a3);
  }

  return v7;
}

- (PTAtomWriter)initWithParent:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PTAtomWriter;
  v6 = [(PTAtomWriter *)&v11 init];
  if (v6)
  {
    v7 = [v5 byteWriter];
    byteWriter = v6->_byteWriter;
    v6->_byteWriter = v7;

    objc_storeStrong(&v6->_parentWriter, a3);
    v9 = [v5 globalAtomOffset];
    v6->_globalAtomOffset = [v5 atomSize] + v9;
  }

  return v6;
}

- (void)beginAtomOfType:(unsigned int)a3
{
  if (!self->_error)
  {
    [(PTAtomWriter *)a3 beginAtomOfType:?];
  }
}

- (void)appendVersion:(unint64_t)a3 flags:(unint64_t)a4
{
  if (!self->_error && self->_didBeginAtom)
  {
    v7 = v4;
    v8 = v5;
    [(PTAtomWriter *)a3 appendVersion:a4 flags:&v6];
  }
}

- (void)appendBytes:(const void *)a3 size:(unint64_t)a4
{
  if (!self->_error && a4 && self->_didBeginAtom)
  {
    [(PTAtomWriter *)self appendBytes:a3 size:a4];
  }
}

- (void)endAtom
{
  if (!self->_error)
  {
    v11 = v2;
    v12 = v3;
    if (self->_didBeginAtom)
    {
      atomSize = self->_atomSize;
      if (HIDWORD(atomSize))
      {
        v6 = [(PTAtomWriter *)self _errorForSize:?];
        [(PTAtomWriter *)self setError:v6];
      }

      else
      {
        v10 = bswap32(atomSize);
        [(PTAtomWriter *)self _writeBytes:&v10 size:4 offset:self->_globalAtomOffset];
        v7 = [(PTAtomWriter *)self error];

        if (!v7)
        {
          parentWriter = self->_parentWriter;
          if (parentWriter)
          {
            parentWriter->_atomSize += self->_atomSize;
          }

          v9 = self->_globalAtomOffset + self->_atomSize;
          self->_atomSize = 0;
          self->_globalAtomOffset = v9;
          self->_atomDataOffset = 0;
          self->_didBeginAtom = 0;
          self->_atomType = 0;
        }
      }

      [(PTAtomWriter *)self _debugLogAtomWriterState];
      [(PTAtomWriter *)self _setErrorForByteWriterIfNeeded];
      [(PTAtomWriter *)self->_parentWriter _debugLogAtomWriterState];
    }
  }
}

- (void)setError:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_error, a3);
  parentWriter = self->_parentWriter;
  if (parentWriter)
  {
    [(PTAtomWriter *)parentWriter setError:v6];
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
  v8 = [(PTAtomWriter *)self globalAtomOffset];
  v9 = [(PTAtomWriter *)self atomSize];
  v10 = [(PTAtomWriter *)self atomDataOffset];
  v11 = [(PTAtomWriter *)self atomDataSize];
  v12 = [(PTAtomWriter *)self error];
  if (v12)
  {
    v13 = [v7 stringWithFormat:@"atom%@: { offset: %lu, size: %lu }, data: { offset: %lu, size: %lu }%@", v6, v8, v9, v10, v11, &stru_2837D16E8];
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [(PTAtomWriter *)self error];
    v16 = [v14 stringWithFormat:@" (%@)", v15];
    v13 = [v7 stringWithFormat:@"atom%@: { offset: %lu, size: %lu }, data: { offset: %lu, size: %lu }%@", v6, v8, v9, v10, v11, v16];
  }

  return v13;
}

- (void)_appendBytes:(const void *)a3 size:(unint64_t)a4
{
  [PTAtomWriter _debugLogBytes:"_debugLogBytes:size:" size:?];
  byteWriter = self->_byteWriter;

  [(PTByteWriter *)byteWriter appendBytes:a3 size:a4];
}

- (void)_writeBytes:(const void *)a3 size:(unint64_t)a4 offset:(unint64_t)a5
{
  [PTAtomWriter _debugLogBytes:"_debugLogBytes:size:offset:" size:? offset:?];
  byteWriter = self->_byteWriter;

  [(PTByteWriter *)byteWriter writeBytes:a3 size:a4 offset:a5];
}

- (void)_setErrorForByteWriterIfNeeded
{
  v3 = [(PTByteWriter *)self->_byteWriter error];

  if (v3)
  {
    v5 = [(PTByteWriter *)self->_byteWriter error];
    v4 = [(PTAtomWriter *)self _errorForByteWriterError:v5];
    [(PTAtomWriter *)self setError:v4];
  }
}

- (id)_errorForVersion:(unint64_t)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"version %lu is too big to fit", a3];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA590];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:v5 code:-12572 userInfo:v6];

  return v7;
}

- (id)_errorForSize:(unint64_t)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"data size %lu is too big to fit", a3];
  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA590];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:v5 code:-12572 userInfo:v6];

  return v7;
}

- (void)_debugLogBytes:(const void *)a3 size:(unint64_t)a4
{
  if (PTSerializationDebugIsEnabled())
  {
    v6 = _PTLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PTAtomWriter _debugLogBytes:a3 size:a4];
    }
  }
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
      _os_log_debug_impl(&dword_2243FB000, v8, OS_LOG_TYPE_DEBUG, "w[%zd]: %@", &v10, 0x16u);
    }
  }
}

- (void)_debugLogAtomWriterState
{
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_0_6(&dword_2243FB000, v2, v3, "%@", v4, v5, v6, v7, 2u);
}

- (uint64_t)beginAtomOfType:(unsigned int)a1 .cold.1(unsigned int a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[1] = bswap32(a1);
  [a2 _appendBytes:v6 size:8];
  v4 = [a2 error];

  if (!v4)
  {
    *(a2 + 56) = 8;
    *(a2 + 40) = 8;
    *(a2 + 8) = 1;
    *(a2 + 12) = a1;
  }

  [a2 _debugLogAtomWriterState];
  return [a2 _setErrorForByteWriterIfNeeded];
}

- (uint64_t)appendVersion:(int)a3 flags:(_DWORD *)a4 .cold.1(unint64_t a1, void *a2, int a3, _DWORD *a4)
{
  if (a1 < 0x100)
  {
    *a4 = bswap32(a3 & 0xFFFFFF | (a1 << 24));
    [a2 _appendBytes:a4 size:4];
    v6 = [a2 error];

    if (!v6)
    {
      v7 = a2[5] + 4;
      a2[5] = v7;
      a2[7] = v7;
    }
  }

  else
  {
    v5 = [a2 _errorForVersion:a1];
    [a2 setError:v5];
  }

  [a2 _debugLogAtomWriterState];
  return [a2 _setErrorForByteWriterIfNeeded];
}

- (uint64_t)appendBytes:(uint64_t)a3 size:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 _appendBytes:a2 size:a3];
  v5 = [a1 error];

  if (!v5)
  {
    a1[5] += a3;
  }

  [a1 _debugLogAtomWriterState];

  return [a1 _setErrorForByteWriterIfNeeded];
}

- (void)_debugLogBytes:(unsigned __int8 *)a1 size:(uint64_t)a2 .cold.1(unsigned __int8 *a1, uint64_t a2)
{
  v2 = NSStringFromBytes(a1, a2);
  OUTLINED_FUNCTION_0_6(&dword_2243FB000, v3, v4, "w[+]: %@", v5, v6, v7, v8, 2u);
}

@end