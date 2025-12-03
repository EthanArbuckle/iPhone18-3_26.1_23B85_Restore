@interface UIFrameAnimation
- (CGRect)endFrame;
- (UIFrameAnimation)initWithTarget:(id)target;
- (void)setProgress:(float)progress;
@end

@implementation UIFrameAnimation

- (UIFrameAnimation)initWithTarget:(id)target
{
  v4.receiver = self;
  v4.super_class = UIFrameAnimation;
  result = [(UIAnimation *)&v4 initWithTarget:target];
  if (result)
  {
    result->_fieldsToChange = 255;
  }

  return result;
}

- (CGRect)endFrame
{
  x = self->_endFrame.origin.x;
  y = self->_endFrame.origin.y;
  width = self->_endFrame.size.width;
  height = self->_endFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setProgress:(float)progress
{
  [self->super._target frame];
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  v33 = CGRectIntegral(v32);
  rect2 = v33.origin.x;
  v9 = v33.origin.y;
  v10 = v33.size.width;
  v11 = v33.size.height;
  fieldsToChange = self->_fieldsToChange;
  if ((fieldsToChange & 1) == 0)
  {
    if ((fieldsToChange & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    v19 = self->_startFrame.origin.y;
    v20 = self->_endFrame.origin.y - v19;
    v21 = v19 + (v20 * progress);
    if (v20 >= 0.0)
    {
      y = ceil(v21);
      if ((fieldsToChange & 4) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      y = floor(v21);
      if ((fieldsToChange & 4) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    if ((fieldsToChange & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  v16 = self->_startFrame.origin.x;
  v17 = self->_endFrame.origin.x - v16;
  v18 = v16 + (v17 * progress);
  if (v17 >= 0.0)
  {
    x = ceil(v18);
    if ((fieldsToChange & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    x = floor(v18);
    if ((fieldsToChange & 2) != 0)
    {
      goto LABEL_12;
    }
  }

LABEL_3:
  if ((fieldsToChange & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v22 = self->_startFrame.size.width;
  v23 = self->_endFrame.size.width - v22;
  v24 = v22 + (v23 * progress);
  if (v23 >= 0.0)
  {
    width = ceil(v24);
    if ((fieldsToChange & 8) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    width = floor(v24);
    if ((fieldsToChange & 8) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_5:
  v13 = self->_startFrame.size.height;
  v14 = self->_endFrame.size.height - v13;
  v15 = v13 + (v14 * progress);
  if (v14 >= 0.0)
  {
    height = ceil(v15);
  }

  else
  {
    height = floor(v15);
  }

LABEL_20:
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v35 = CGRectIntegral(v34);
  v25 = v35.origin.x;
  v26 = v35.origin.y;
  v27 = v35.size.width;
  v28 = v35.size.height;
  v36.origin.x = rect2;
  v36.origin.y = v9;
  v36.size.width = v10;
  v36.size.height = v11;
  if (!CGRectEqualToRect(v35, v36))
  {
    target = self->super._target;

    [target setFrame:{v25, v26, v27, v28}];
  }
}

@end