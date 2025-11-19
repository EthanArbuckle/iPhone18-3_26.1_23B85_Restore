@interface _UICellViewAccessory
+ (id)accessoryWithIdentifier:(id)a3 view:(id)a4 options:(int64_t)a5 reservedLayoutWidth:(double)a6;
- (BOOL)isEqual:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
@end

@implementation _UICellViewAccessory

+ (id)accessoryWithIdentifier:(id)a3 view:(id)a4 options:(int64_t)a5 reservedLayoutWidth:(double)a6
{
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS____UICellViewAccessory;
  v9 = a4;
  v10 = objc_msgSendSuper2(&v12, sel_accessoryWithIdentifier_, a3);
  [v10 setView:{v9, v12.receiver, v12.super_class}];

  [v10 setOptions:a5];
  [v10 setReservedLayoutWidth:a6];

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  options = self->_options;
  if ((options & 2) != 0)
  {
    v12 = [(UIView *)self->super._view _wantsAutolayout];
    view = self->super._view;
    if (v12)
    {
      [(UIView *)view systemLayoutSizeFittingSize:0.0, height];
    }

    else
    {
      [(UIView *)view sizeThatFits:width, height];
    }

    if (v11 >= height)
    {
      v11 = height;
    }
  }

  else
  {
    v7 = self->super._view;
    if (options)
    {
      [(UIView *)v7 sizeThatFits:a3.width, a3.height];
    }

    else
    {
      [(UIView *)v7 frame];
      v9 = v8;
      v11 = v10;
    }
  }

  result.height = v11;
  result.width = v9;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UICellViewAccessory;
  if ([(_UICellAccessory *)&v12 isEqual:v4])
  {
    if ((self->_options & 4) != 0)
    {
      view = self->super._view;
      v7 = [v4 view];
      v8 = view;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
        v5 = 1;
      }

      else
      {
        v5 = 0;
        if (v8 && v9)
        {
          v5 = [(UIView *)v8 isEqual:v9];
        }
      }
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end