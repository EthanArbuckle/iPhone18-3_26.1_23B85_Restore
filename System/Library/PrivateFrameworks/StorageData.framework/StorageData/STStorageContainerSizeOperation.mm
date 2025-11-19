@interface STStorageContainerSizeOperation
+ (id)operationForContainer:(id)a3;
- (void)main;
@end

@implementation STStorageContainerSizeOperation

+ (id)operationForContainer:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(STStorageContainerSizeOperation);
  [(STStorageContainerSizeOperation *)v4 setContainer:v3];

  return v4;
}

- (void)main
{
  v3 = [(STStorageContainerSizeOperation *)self container];
  v4 = v3;
  if (v3)
  {
    v16 = 0;
    v5 = [v3 diskUsageWithError:&v16];
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
    v7 = [v6 code];
    v8 = [v4 url];
    v15 = [v8 path];
    STLog(2, @"Error %li sizing container %@", v9, v10, v11, v12, v13, v14, v7);
  }
}

@end