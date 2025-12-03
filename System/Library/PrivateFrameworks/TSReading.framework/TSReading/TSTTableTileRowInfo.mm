@interface TSTTableTileRowInfo
- (TSTTableTileRowInfo)initWithOwner:(id)owner tileRowIndex:(unsigned __int16)index;
- (id)description;
- (id)p_debugDumpCompact;
- (void)dealloc;
- (void)i_upgradeWithDataStore:(id)store;
@end

@implementation TSTTableTileRowInfo

- (TSTTableTileRowInfo)initWithOwner:(id)owner tileRowIndex:(unsigned __int16)index
{
  v7.receiver = self;
  v7.super_class = TSTTableTileRowInfo;
  result = [(TSPContainedObject *)&v7 initWithOwner:owner];
  if (result)
  {
    result->mTileRowIndex = index;
    result->mStorageBuffer = 0;
    result->mBufferSize = 0;
    result->mCellCount = 0;
    result->mMaxTileColumnIndex = -1;
    result->mMaxTileColumnIndexValid = 1;
    *&v6 = -1;
    *(&v6 + 1) = -1;
    *&result->mStorageOffsets[247] = v6;
    *&result->mStorageOffsets[232] = v6;
    *&result->mStorageOffsets[240] = v6;
    *&result->mStorageOffsets[216] = v6;
    *&result->mStorageOffsets[224] = v6;
    *&result->mStorageOffsets[200] = v6;
    *&result->mStorageOffsets[208] = v6;
    *&result->mStorageOffsets[184] = v6;
    *&result->mStorageOffsets[192] = v6;
    *&result->mStorageOffsets[168] = v6;
    *&result->mStorageOffsets[176] = v6;
    *&result->mStorageOffsets[152] = v6;
    *&result->mStorageOffsets[160] = v6;
    *&result->mStorageOffsets[136] = v6;
    *&result->mStorageOffsets[144] = v6;
    *&result->mStorageOffsets[120] = v6;
    *&result->mStorageOffsets[128] = v6;
    *&result->mStorageOffsets[104] = v6;
    *&result->mStorageOffsets[112] = v6;
    *&result->mStorageOffsets[88] = v6;
    *&result->mStorageOffsets[96] = v6;
    *&result->mStorageOffsets[72] = v6;
    *&result->mStorageOffsets[80] = v6;
    *&result->mStorageOffsets[56] = v6;
    *&result->mStorageOffsets[64] = v6;
    *&result->mStorageOffsets[40] = v6;
    *&result->mStorageOffsets[48] = v6;
    *&result->mStorageOffsets[24] = v6;
    *&result->mStorageOffsets[32] = v6;
    *&result->mStorageOffsets[8] = v6;
    *&result->mStorageOffsets[16] = v6;
    *result->mStorageOffsets = v6;
    result->mStorageVersion = 3;
  }

  return result;
}

- (void)dealloc
{
  mStorageBuffer = self->mStorageBuffer;
  if (mStorageBuffer)
  {
    CFRelease(mStorageBuffer);
  }

  v4.receiver = self;
  v4.super_class = TSTTableTileRowInfo;
  [(TSTTableTileRowInfo *)&v4 dealloc];
}

- (id)p_debugDumpCompact
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:@"idx: |"];
  v4 = [MEMORY[0x277CCAB68] stringWithString:@"off: |"];
  for (i = 0; i != 255; ++i)
  {
    v6 = self->mStorageOffsets[i];
    if (v6 != 0xFFFF)
    {
      [v3 appendFormat:@"%3hu|", i];
      [v4 appendFormat:@"%3hu|", v6];
    }
  }

  [v3 appendFormat:@"\n%@", v4];
  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@:%p tileRowIndex %hu cellCount %hu>", NSStringFromClass(v4), self, self->mTileRowIndex, self->mCellCount];
}

- (void)i_upgradeWithDataStore:(id)store
{
  v5 = [[TSTTableTileRowInfo alloc] initWithOwner:0 tileRowIndex:[(TSTTableTileRowInfo *)self tileRowIndex]];
  if (!v5)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableTileRowInfo(Internal) i_upgradeWithDataStore:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTileRowInfo.mm"), 669, @"failed to allocate memory in tile upgrade, the world will end now"}];
  }

  v8 = objc_alloc_init(TSTCell);
  MutableBytePtr = CFDataGetMutableBytePtr(self->mStorageBuffer);
  v10 = 0;
  v11 = 0;
  selfCopy = self;
  do
  {
    if (self->mCellCount == v11)
    {
      break;
    }

    v13 = selfCopy->mStorageOffsets[0];
    if (v13 != 0xFFFF)
    {
      TSTCellInflateFromStorageRef(v8, &MutableBytePtr[v13], store);
      TSTTableTileRowInfoSetCell(v5, v10, v8);
      ++v11;
    }

    ++v10;
    selfCopy = (selfCopy + 2);
  }

  while (v10 != 255);
  if (v11)
  {
    mStorageBuffer = v5->mStorageBuffer;
    if (!mStorageBuffer)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableTileRowInfo(Internal) i_upgradeWithDataStore:]"];
      [currentHandler2 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableTileRowInfo.mm"), 719, @"NULL storage buffer"}];
      mStorageBuffer = v5->mStorageBuffer;
    }

    CFRetain(mStorageBuffer);
    CFRelease(self->mStorageBuffer);
    self->mStorageBuffer = v5->mStorageBuffer;
    memcpy(self->mStorageOffsets, v5->mStorageOffsets, 0x200uLL);
  }

  self->mStorageVersion = 3;
}

@end