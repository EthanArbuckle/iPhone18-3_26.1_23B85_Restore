@interface STStorageContainerSizeOperation
+ (id)operationForContainer:(id)container;
- (void)main;
@end

@implementation STStorageContainerSizeOperation

+ (id)operationForContainer:(id)container
{
  containerCopy = container;
  v4 = objc_alloc_init(STStorageContainerSizeOperation);
  [(STStorageContainerSizeOperation *)v4 setContainer:containerCopy];

  return v4;
}

- (void)main
{
  container = [(STStorageContainerSizeOperation *)self container];
  v4 = container;
  if (container)
  {
    v16 = 0;
    v5 = [container diskUsageWithError:&v16];
    v6 = v16;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  [(STStorageSizeOperation *)self setSize:v5];
  [(STStorageOperation *)self setError:v6];
  if (v6)
  {
    code = [v6 code];
    v8 = [v4 url];
    path = [v8 path];
    STLog(2, @"Error %li sizing container %@", v9, v10, v11, v12, v13, v14, code);
  }
}

@end