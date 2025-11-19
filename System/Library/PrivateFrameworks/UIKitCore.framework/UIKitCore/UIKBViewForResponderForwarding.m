@interface UIKBViewForResponderForwarding
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation UIKBViewForResponderForwarding

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(UIView *)self subviews];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v13 convertPoint:self fromView:{x, y}];
        if ([v13 pointInside:v7 withEvent:?])
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIKBViewForResponderForwarding *)self responderForForwarding];

  if (v8)
  {
    v9 = [(UIKBViewForResponderForwarding *)self responderForForwarding];
    [v9 touchesBegan:v6 withEvent:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKBViewForResponderForwarding;
    [(UIResponder *)&v10 touchesBegan:v6 withEvent:v7];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIKBViewForResponderForwarding *)self responderForForwarding];

  if (v8)
  {
    v9 = [(UIKBViewForResponderForwarding *)self responderForForwarding];
    [v9 touchesEnded:v6 withEvent:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKBViewForResponderForwarding;
    [(UIResponder *)&v10 touchesEnded:v6 withEvent:v7];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIKBViewForResponderForwarding *)self responderForForwarding];

  if (v8)
  {
    v9 = [(UIKBViewForResponderForwarding *)self responderForForwarding];
    [v9 touchesCancelled:v6 withEvent:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKBViewForResponderForwarding;
    [(UIResponder *)&v10 touchesCancelled:v6 withEvent:v7];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIKBViewForResponderForwarding *)self responderForForwarding];

  if (v8)
  {
    v9 = [(UIKBViewForResponderForwarding *)self responderForForwarding];
    [v9 touchesMoved:v6 withEvent:v7];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIKBViewForResponderForwarding;
    [(UIResponder *)&v10 touchesMoved:v6 withEvent:v7];
  }
}

@end