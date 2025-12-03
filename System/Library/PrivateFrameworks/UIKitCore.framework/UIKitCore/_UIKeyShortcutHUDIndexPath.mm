@interface _UIKeyShortcutHUDIndexPath
+ (id)hudIndexPathWithClient:(id)client indexPath:(id)path;
- (BOOL)isEqual:(id)equal;
- (_UIKeyShortcutHUDCollectionViewManagerClient)client;
- (unint64_t)hash;
@end

@implementation _UIKeyShortcutHUDIndexPath

+ (id)hudIndexPathWithClient:(id)client indexPath:(id)path
{
  pathCopy = path;
  clientCopy = client;
  v7 = objc_opt_new();
  [v7 setClient:clientCopy];

  [v7 setIndexPath:pathCopy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      client = [(_UIKeyShortcutHUDIndexPath *)self client];
      client2 = [(_UIKeyShortcutHUDIndexPath *)v7 client];
      if (client == client2)
      {
        indexPath = [(_UIKeyShortcutHUDIndexPath *)self indexPath];
        indexPath2 = [(_UIKeyShortcutHUDIndexPath *)v7 indexPath];
        v10 = [indexPath isEqual:indexPath2];
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