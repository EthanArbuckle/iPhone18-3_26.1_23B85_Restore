@interface TSDInstantAlphaBinaryBitmap
- (TSDInstantAlphaBinaryBitmap)initWithWidth:(int64_t)a3 height:(int64_t)a4;
- (void)dealloc;
- (void)unionWithBitmap:(id)a3;
@end

@implementation TSDInstantAlphaBinaryBitmap

- (TSDInstantAlphaBinaryBitmap)initWithWidth:(int64_t)a3 height:(int64_t)a4
{
  if (a3 < 1 || a4 <= 0)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInstantAlphaBinaryBitmap initWithWidth:height:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInstantAlphaBinaryBitmap.m"), 19, @"Invalid parameter not satisfying: %s", "width > 0 && height > 0"}];
  }

  v14.receiver = self;
  v14.super_class = TSDInstantAlphaBinaryBitmap;
  v9 = [(TSDInstantAlphaBinaryBitmap *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->mWidth = a3;
    v9->mHeight = a4;
    AlignedBytesPerRow = TSUBitmapGetAlignedBytesPerRow();
    v10->mRowBytes = AlignedBytesPerRow;
    v12 = malloc_type_calloc(v10->mHeight, AlignedBytesPerRow, 0x100004077774924uLL);
    v10->mData = v12;
    if (!v12)
    {

      return 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  mData = self->mData;
  if (mData)
  {
    free(mData);
  }

  v4.receiver = self;
  v4.super_class = TSDInstantAlphaBinaryBitmap;
  [(TSDInstantAlphaBinaryBitmap *)&v4 dealloc];
}

- (void)unionWithBitmap:(id)a3
{
  if (self->mWidth == *(a3 + 1) && (mHeight = self->mHeight, mHeight == *(a3 + 2)))
  {
    if (mHeight >= 1)
    {
      v4 = 0;
      v5 = *(a3 + 4);
      mRowBytes = self->mRowBytes;
      mData = self->mData;
      do
      {
        if (mRowBytes >= 1)
        {
          for (i = 0; i < mRowBytes; ++i)
          {
            mData[i] |= *(v5 + i);
            mRowBytes = self->mRowBytes;
          }

          mHeight = self->mHeight;
        }

        ++v4;
        mData += mRowBytes;
        v5 += *(a3 + 3);
      }

      while (mHeight > v4);
    }
  }

  else
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDInstantAlphaBinaryBitmap unionWithBitmap:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInstantAlphaBinaryBitmap.m"];

    [v9 handleFailureInFunction:v10 file:v11 lineNumber:50 description:@"unionWithBitmap: sizes do not match"];
  }
}

@end