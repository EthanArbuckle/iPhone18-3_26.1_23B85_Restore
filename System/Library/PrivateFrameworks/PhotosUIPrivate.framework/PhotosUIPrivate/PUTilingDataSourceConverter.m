@interface PUTilingDataSourceConverter
- (BOOL)convertIndexPath:(id *)a3 tileKind:(id *)a4 fromDataSource:(id)a5 toDataSource:(id)a6;
@end

@implementation PUTilingDataSourceConverter

- (BOOL)convertIndexPath:(id *)a3 tileKind:(id *)a4 fromDataSource:(id)a5 toDataSource:(id)a6
{
  v6 = *a3;
  v7 = [MEMORY[0x1E696AC88] pu_rootIndexPath];
  LOBYTE(v6) = [v6 isEqual:v7];

  return v6;
}

@end