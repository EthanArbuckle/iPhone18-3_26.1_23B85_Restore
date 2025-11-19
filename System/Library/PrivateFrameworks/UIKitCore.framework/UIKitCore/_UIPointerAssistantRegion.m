@interface _UIPointerAssistantRegion
- (BOOL)isEqual:(id)a3;
- (UIButton)targetViewAsButton;
- (UIView)targetView;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation _UIPointerAssistantRegion

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = _UIPointerAssistantRegion;
  v4 = [(UIPointerRegion *)&v7 copyWithZone:0];
  WeakRetained = objc_loadWeakRetained(&self->_targetView);
  objc_storeWeak(v4 + 10, WeakRetained);

  objc_storeStrong(v4 + 11, self->_assistant);
  *(v4 + 72) = self->_selected;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v11.receiver = self, v11.super_class = _UIPointerAssistantRegion, [(UIPointerRegion *)&v11 isEqual:v5]))
  {
    v6 = v5;
    if (self->_selected == *(v6 + 72))
    {
      WeakRetained = objc_loadWeakRetained(&self->_targetView);
      v8 = objc_loadWeakRetained(v6 + 10);
      if (WeakRetained == v8)
      {
        v9 = _deferringTokenEqualToToken(self->_assistant, v6[11]);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = _UIPointerAssistantRegion;
  v4 = [(UIPointerRegion *)&v11 description];
  assistant = self->_assistant;
  WeakRetained = objc_loadWeakRetained(&self->_targetView);
  v7 = WeakRetained;
  if (self->_selected)
  {
    v8 = @" selected";
  }

  else
  {
    v8 = &stru_1EFB14550;
  }

  v9 = [v3 stringWithFormat:@"%@ assistant=%@ targetView=%p%@", v4, assistant, WeakRetained, v8];

  return v9;
}

- (UIButton)targetViewAsButton
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = WeakRetained;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (UIView)targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  return WeakRetained;
}

@end