@interface TLKIcon
- (void)setImage:(id)a3;
@end

@implementation TLKIcon

- (void)setImage:(id)a3
{
  v10 = a3;
  if (self->_image != v10)
  {
    objc_storeStrong(&self->_image, a3);
    v5 = [(TLKObject *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKObject *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKObject *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

@end