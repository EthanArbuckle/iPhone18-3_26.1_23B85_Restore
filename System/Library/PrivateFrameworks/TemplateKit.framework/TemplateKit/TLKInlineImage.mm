@interface TLKInlineImage
- (void)setTlkImage:(id)image;
@end

@implementation TLKInlineImage

- (void)setTlkImage:(id)image
{
  v34 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (objc_opt_respondsToSelector())
  {
    [(TLKImage *)self->_tlkImage setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = imageCopy;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_tlkImage;
      v7 = [(TLKImage *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v11 setObserver:0];
            }
          }

          v8 = [(TLKImage *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      imageCopy = v23;
    }
  }

  objc_storeStrong(&self->_tlkImage, image);
  if (objc_opt_respondsToSelector())
  {
    [(TLKImage *)self->_tlkImage setObserver:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = self->_tlkImage;
      v13 = [(TLKImage *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v17 setObserver:self];
            }
          }

          v14 = [(TLKImage *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  observer = [(TLKObject *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKObject *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKObject *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

@end