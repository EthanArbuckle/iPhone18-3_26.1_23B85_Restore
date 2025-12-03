@interface _UICellViewAccessory
+ (id)accessoryWithIdentifier:(id)identifier view:(id)view options:(int64_t)options reservedLayoutWidth:(double)width;
- (BOOL)isEqual:(id)equal;
- (CGSize)sizeThatFits:(CGSize)fits;
@end

@implementation _UICellViewAccessory

+ (id)accessoryWithIdentifier:(id)identifier view:(id)view options:(int64_t)options reservedLayoutWidth:(double)width
{
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS____UICellViewAccessory;
  viewCopy = view;
  v10 = objc_msgSendSuper2(&v12, sel_accessoryWithIdentifier_, identifier);
  [v10 setView:{viewCopy, v12.receiver, v12.super_class}];

  [v10 setOptions:options];
  [v10 setReservedLayoutWidth:width];

  return v10;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  options = self->_options;
  if ((options & 2) != 0)
  {
    _wantsAutolayout = [(UIView *)self->super._view _wantsAutolayout];
    view = self->super._view;
    if (_wantsAutolayout)
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
      [(UIView *)v7 sizeThatFits:fits.width, fits.height];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _UICellViewAccessory;
  if ([(_UICellAccessory *)&v12 isEqual:equalCopy])
  {
    if ((self->_options & 4) != 0)
    {
      view = self->super._view;
      view = [equalCopy view];
      v8 = view;
      v9 = view;
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