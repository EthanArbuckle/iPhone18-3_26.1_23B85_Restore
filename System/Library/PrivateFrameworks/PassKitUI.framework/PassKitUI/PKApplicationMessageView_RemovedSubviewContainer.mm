@interface PKApplicationMessageView_RemovedSubviewContainer
- (id)initWithView:(void *)view index:(int)index layoutMode:(void *)mode commitAnimation:;
- (void)_finishFromDealloc:(uint64_t)dealloc;
- (void)dealloc;
@end

@implementation PKApplicationMessageView_RemovedSubviewContainer

- (id)initWithView:(void *)view index:(int)index layoutMode:(void *)mode commitAnimation:
{
  v10 = a2;
  modeCopy = mode;
  if (self && v10)
  {
    v21.receiver = self;
    v21.super_class = PKApplicationMessageView_RemovedSubviewContainer;
    v12 = objc_msgSendSuper2(&v21, sel_init);
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 4, a2);
      v13[5] = view;
      v13[6] = view;
      *(v13 + 7) = index;
      *(v13 + 24) = 0;
      v14 = _Block_copy(modeCopy);
      v15 = v13[1];
      v13[1] = v14;

      [v13[4] setUserInteractionEnabled:0];
      traitCollection = [v13[4] traitCollection];
      v17 = traitCollection;
      if (traitCollection)
      {
        preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
        if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC90]))
        {
          [v13[4] setMinimumContentSizeCategory:preferredContentSizeCategory];
          [v13[4] setMaximumContentSizeCategory:preferredContentSizeCategory];
        }
      }
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  if (self->_commitFlag == 1)
  {
    [(PKApplicationMessageView_RemovedSubviewContainer *)self _finishFromDealloc:?];
  }

  v3.receiver = self;
  v3.super_class = PKApplicationMessageView_RemovedSubviewContainer;
  [(PKApplicationMessageView_RemovedSubviewContainer *)&v3 dealloc];
}

- (void)_finishFromDealloc:(uint64_t)dealloc
{
  if (dealloc)
  {
    if (*(dealloc + 24) == 1)
    {
      *(dealloc + 24) = 2;
      v3 = *(dealloc + 16);
      if (v3)
      {
        if (a2)
        {
          deallocCopy = 0;
        }

        else
        {
          deallocCopy = dealloc;
        }

        (*(v3 + 16))(v3, deallocCopy);
        v5 = *(dealloc + 16);
        *(dealloc + 16) = 0;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

@end