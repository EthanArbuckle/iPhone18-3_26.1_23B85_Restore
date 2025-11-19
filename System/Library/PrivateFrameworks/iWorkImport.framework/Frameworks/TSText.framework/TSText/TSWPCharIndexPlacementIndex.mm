@interface TSWPCharIndexPlacementIndex
- (TSWPCharIndexPlacementIndex)initWithCharIndex:(unint64_t)a3 placmentIndex:(int)a4 drawableAttachment:(id)a5;
- (int64_t)compare:(id)a3;
@end

@implementation TSWPCharIndexPlacementIndex

- (TSWPCharIndexPlacementIndex)initWithCharIndex:(unint64_t)a3 placmentIndex:(int)a4 drawableAttachment:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = TSWPCharIndexPlacementIndex;
  v10 = [(TSWPCharIndexPlacementIndex *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_charIndex = a3;
    v10->_placementIndex = a4;
    objc_storeStrong(&v10->_drawableAttachment, a5);
  }

  return v11;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_placementIndex(v4, v5, v6);
  if (v7 == objc_msgSend_placementIndex(self, v8, v9))
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_msgSend_placementIndex(v4, v10, v11);
    if (v13 < objc_msgSend_placementIndex(self, v14, v15))
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }
  }

  return v12;
}

@end