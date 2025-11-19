@interface _UIStoryboardProxy
- (_UIStoryboardProxy)initWithCoder:(id)a3;
- (_UIStoryboardProxy)initWithStoryboard:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIStoryboardProxy

- (_UIStoryboardProxy)initWithStoryboard:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIStoryboardProxy;
  v4 = [(_UIStoryboardProxy *)&v6 init];
  if (v4)
  {
    if (a3)
    {
      v4->_storyboard = a3;
    }

    else
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SWarningTriedT.isa, "[_UIStoryboardProxy initWithStoryboard:]", 0);
      }

      return 0;
    }
  }

  return v4;
}

- (_UIStoryboardProxy)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kStoryboardNameKey"];
  if (v5)
  {
    v6 = v5;
    v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kStoryboardBundlePathKey"];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AAE8] bundleWithPath:v7];
    }

    else
    {
      v8 = 0;
    }

    v11 = [UIStoryboard storyboardWithName:v6 bundle:v8];
  }

  else
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SNoStoryboardN.isa, "[_UIStoryboardProxy initWithCoder:]", self);
    }

    v11 = 0;
  }

  v9 = self;

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [(UIStoryboard *)self->_storyboard name];
  if (v5)
  {
    [a3 encodeObject:v5 forKey:@"kStoryboardNameKey"];
    v6 = [(UIStoryboard *)self->_storyboard bundle];
    if (v6)
    {
      v7 = v6;
      if (v6 != [MEMORY[0x1E696AAE8] mainBundle])
      {
        v8 = [(NSBundle *)v7 bundlePath];
        if (v8)
        {

          [a3 encodeObject:v8 forKey:@"kStoryboardBundlePathKey"];
        }

        else if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SStoryboardBun.isa, "[_UIStoryboardProxy encodeWithCoder:]", v7);
        }
      }
    }
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SStoryboardHas.isa, "[_UIStoryboardProxy encodeWithCoder:]", self->_storyboard);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _UIStoryboardProxy;
  [(_UIStoryboardProxy *)&v3 dealloc];
}

@end