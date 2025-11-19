@interface _UIKeyShortcutHUDIndexPath
+ (id)hudIndexPathWithClient:(id)a3 indexPath:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_UIKeyShortcutHUDCollectionViewManagerClient)client;
- (unint64_t)hash;
@end

@implementation _UIKeyShortcutHUDIndexPath

+ (id)hudIndexPathWithClient:(id)a3 indexPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setClient:v6];

  [v7 setIndexPath:v5];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(_UIKeyShortcutHUDIndexPath *)self client];
      v9 = [(_UIKeyShortcutHUDIndexPath *)v7 client];
      if (v8 == v9)
      {
        v11 = [(_UIKeyShortcutHUDIndexPath *)self indexPath];
        v12 = [(_UIKeyShortcutHUDIndexPath *)v7 indexPath];
        v10 = [v11 isEqual:v12];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  WeakRetained = objc_loadWeakRetained(&self->_client);
  v4 = [WeakRetained hash];
  v5 = [(NSIndexPath *)self->_indexPath hash];

  return v5 ^ v4;
}

- (_UIKeyShortcutHUDCollectionViewManagerClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end