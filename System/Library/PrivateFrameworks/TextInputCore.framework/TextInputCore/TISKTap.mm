@interface TISKTap
- (BOOL)isDownUpTap;
- (CGRect)getFrameForKey:(id)key;
- (double)distance:(id)distance withTouch:(id)touch;
- (double)downErrorDistance:(CGRect)distance;
- (double)totalTapDistance;
- (double)upErrorDistance:(CGRect)distance;
- (id)init:(id)init layout:(id)layout;
- (id)stringForIntendedKey;
- (int64_t)_forcedKeyCode;
@end

@implementation TISKTap

- (double)totalTapDistance
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = self->_firstTouch;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_dragTouches;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = 0.0;
    do
    {
      v9 = 0;
      v10 = v3;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v17 + 1) + 8 * v9);
        [(TISKTap *)self distance:v10 withTouch:v11, v17];
        v8 = v8 + v12;
        v3 = v11;

        ++v9;
        v10 = v3;
      }

      while (v6 != v9);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  [(TISKTap *)self distance:v3 withTouch:self->_lastTouch];
  v14 = v13;

  v15 = *MEMORY[0x277D85DE8];
  return v8 + v14;
}

- (double)distance:(id)distance withTouch:(id)touch
{
  touchCopy = touch;
  distanceCopy = distance;
  [distanceCopy location];
  v8 = v7;
  [touchCopy location];
  *&v8 = v8 - v9;
  [distanceCopy location];
  v11 = v10;

  [touchCopy location];
  v13 = v12;

  v14 = v11 - v13;
  return hypotf(*&v8, v14);
}

- (id)stringForIntendedKey
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = [(TISKTap *)self _forcedKeyCode];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  layout = self->_layout;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__TISKTap_stringForIntendedKey__block_invoke;
  v6[3] = &unk_278733018;
  v6[4] = v11;
  v6[5] = &v7;
  [(TIKeyboardLayout *)layout enumerateKeysUsingBlock:v6];
  if (v8[3])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v11, 8);

  return v4;
}

uint64_t __31__TISKTap_stringForIntendedKey__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(*(*(result + 32) + 8) + 24) == a3)
  {
    *(*(*(result + 40) + 8) + 24) = a2;
    *a4 = 1;
  }

  return result;
}

- (int64_t)_forcedKeyCode
{
  forcedKeyCode = [(TIKeyboardTouchEvent *)self->_lastTouch forcedKeyCode];
  v4 = 16;
  if (forcedKeyCode == -1)
  {
    v4 = 8;
  }

  v5 = *(&self->super.isa + v4);

  return [v5 forcedKeyCode];
}

- (CGRect)getFrameForKey:(id)key
{
  keyCopy = key;
  v19 = 0;
  v20 = &v19;
  v21 = 0x5012000000;
  v22 = __Block_byref_object_copy__20156;
  v23 = __Block_byref_object_dispose__20157;
  v24 = "";
  v5 = *(MEMORY[0x277CBF398] + 16);
  v25 = *MEMORY[0x277CBF398];
  v26 = v5;
  layout = self->_layout;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __26__TISKTap_getFrameForKey___block_invoke;
  v16[3] = &unk_278732FF0;
  v17 = keyCopy;
  v18 = &v19;
  v7 = keyCopy;
  [(TIKeyboardLayout *)layout enumerateKeysUsingBlock:v16];
  v8 = v20[6];
  v9 = v20[7];
  v10 = v20[8];
  v11 = v20[9];

  _Block_object_dispose(&v19, 8);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

void __26__TISKTap_getFrameForKey___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, _BYTE *a8)
{
  v14 = *(a1 + 32);
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v16 = [v14 caseInsensitiveCompare:v15];

  if (!v16)
  {
    v17 = *(*(a1 + 40) + 8);
    v17[6] = a3;
    v17[7] = a4;
    v17[8] = a5;
    v17[9] = a6;
    *a8 = 1;
  }
}

- (double)upErrorDistance:(CGRect)distance
{
  height = distance.size.height;
  width = distance.size.width;
  y = distance.origin.y;
  x = distance.origin.x;
  [(TIKeyboardTouchEvent *)self->_lastTouch location];
  v9 = v8;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = v9 - CGRectGetMidX(v15);
  [(TIKeyboardTouchEvent *)self->_lastTouch location];
  v12 = v11;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MidY = CGRectGetMidY(v16);
  return sqrt((v12 - MidY) * (v12 - MidY) + v10 * v10);
}

- (double)downErrorDistance:(CGRect)distance
{
  height = distance.size.height;
  width = distance.size.width;
  y = distance.origin.y;
  x = distance.origin.x;
  [(TIKeyboardTouchEvent *)self->_firstTouch location];
  v9 = v8;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = v9 - CGRectGetMidX(v15);
  [(TIKeyboardTouchEvent *)self->_firstTouch location];
  v12 = v11;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MidY = CGRectGetMidY(v16);
  return sqrt((v12 - MidY) * (v12 - MidY) + v10 * v10);
}

- (BOOL)isDownUpTap
{
  if ([(TIKeyboardTouchEvent *)self->_firstTouch stage])
  {
    LOBYTE(lastTouch) = 0;
  }

  else
  {
    lastTouch = self->_lastTouch;
    if (lastTouch)
    {
      LOBYTE(lastTouch) = [(TIKeyboardTouchEvent *)lastTouch stage]== 2;
    }
  }

  return lastTouch;
}

- (id)init:(id)init layout:(id)layout
{
  initCopy = init;
  layoutCopy = layout;
  v15.receiver = self;
  v15.super_class = TISKTap;
  v9 = [(TISKTap *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_firstTouch, init);
    lastTouch = v10->_lastTouch;
    v10->_lastTouch = 0;

    v10->_pathIndex = -1;
    objc_storeStrong(&v10->_layout, layout);
    array = [MEMORY[0x277CBEB18] array];
    dragTouches = v10->_dragTouches;
    v10->_dragTouches = array;
  }

  return v10;
}

@end