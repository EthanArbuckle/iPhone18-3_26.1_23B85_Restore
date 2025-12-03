@interface OKCollectionProxy
- (OKCollectionProxy)init;
- (id)keyEnumerator;
- (id)objectAtIndexPath:(id)path;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (void)dealloc;
@end

@implementation OKCollectionProxy

- (OKCollectionProxy)init
{
  v5.receiver = self;
  v5.super_class = OKCollectionProxy;
  v2 = [(OKCollectionProxy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_dataSource, 0);
    v3->_tag = 0;
  }

  return v3;
}

- (void)dealloc
{
  objc_storeWeak(&self->_dataSource, 0);
  v3.receiver = self;
  v3.super_class = OKCollectionProxy;
  [(OKCollectionProxy *)&v3 dealloc];
}

- (unint64_t)count
{
  result = [(OKCollectionProxy *)self dataSource];
  if (result)
  {
    dataSource = [(OKCollectionProxy *)self dataSource];

    return [(OKCollectionProxyDataSource *)dataSource countOfDictionaryProxy:self];
  }

  return result;
}

- (id)keyEnumerator
{
  result = [(OKCollectionProxy *)self dataSource];
  if (result)
  {
    v4 = [(OKCollectionProxyDataSource *)[(OKCollectionProxy *)self dataSource] allKeysForDictionaryProxy:self];

    return [v4 objectEnumerator];
  }

  return result;
}

- (id)objectForKey:(id)key
{
  result = [(OKCollectionProxy *)self dataSource];
  if (result)
  {
    dataSource = [(OKCollectionProxy *)self dataSource];

    return [(OKCollectionProxyDataSource *)dataSource dictionaryProxy:self objectForKey:key];
  }

  return result;
}

- (id)objectAtIndexPath:(id)path
{
  if (![(OKCollectionProxy *)self dataSource])
  {
    return 0;
  }

  [(OKCollectionProxy *)self dataSource];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  dataSource = [(OKCollectionProxy *)self dataSource];

  return [(OKCollectionProxyDataSource *)dataSource dictionaryProxy:self objectAtIndexPath:path];
}

@end