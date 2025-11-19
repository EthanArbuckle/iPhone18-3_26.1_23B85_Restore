@interface PKApplicationMessageView_RemovedSubviewContainer
- (id)initWithView:(void *)a3 index:(int)a4 layoutMode:(void *)a5 commitAnimation:;
- (void)_finishFromDealloc:(uint64_t)a1;
- (void)dealloc;
@end

@implementation PKApplicationMessageView_RemovedSubviewContainer

- (id)initWithView:(void *)a3 index:(int)a4 layoutMode:(void *)a5 commitAnimation:
{
  v10 = a2;
  v11 = a5;
  if (a1 && v10)
  {
    v21.receiver = a1;
    v21.super_class = PKApplicationMessageView_RemovedSubviewContainer;
    v12 = objc_msgSendSuper2(&v21, sel_init);
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 4, a2);
      v13[5] = a3;
      v13[6] = a3;
      *(v13 + 7) = a4;
      *(v13 + 24) = 0;
      v14 = _Block_copy(v11);
      v15 = v13[1];
      v13[1] = v14;

      [v13[4] setUserInteractionEnabled:0];
      v16 = [v13[4] traitCollection];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 preferredContentSizeCategory];
        if (UIContentSizeCategoryCompareToCategory(v18, *MEMORY[0x1E69DDC90]))
        {
          [v13[4] setMinimumContentSizeCategory:v18];
          [v13[4] setMaximumContentSizeCategory:v18];
        }
      }
    }

    a1 = v13;
    v19 = a1;
  }

  else
  {
    v19 = 0;
  }

  return v19;
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

- (void)_finishFromDealloc:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 24) == 1)
    {
      *(a1 + 24) = 2;
      v3 = *(a1 + 16);
      if (v3)
      {
        if (a2)
        {
          v4 = 0;
        }

        else
        {
          v4 = a1;
        }

        (*(v3 + 16))(v3, v4);
        v5 = *(a1 + 16);
        *(a1 + 16) = 0;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

@end