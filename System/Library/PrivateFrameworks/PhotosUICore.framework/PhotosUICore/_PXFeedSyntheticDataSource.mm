@interface _PXFeedSyntheticDataSource
- (_PXFeedSyntheticDataSource)initWithNumberOfSections:(int64_t)sections numberOfItemsPerSection:(int64_t)section;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
@end

@implementation _PXFeedSyntheticDataSource

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  if (path->dataSourceIdentifier == *off_1E7721F68)
  {
    goto LABEL_10;
  }

  if (path->item == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (path->section != 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Synthetic Section %li", path->section, v8];
      goto LABEL_7;
    }

LABEL_10:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedSyntheticDataSourceManager.m" lineNumber:74 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Synthetic Item %li:%li", path->section, path->item];
LABEL_7:

  return v3;
}

- (_PXFeedSyntheticDataSource)initWithNumberOfSections:(int64_t)sections numberOfItemsPerSection:(int64_t)section
{
  v7.receiver = self;
  v7.super_class = _PXFeedSyntheticDataSource;
  result = [(_PXFeedSyntheticDataSource *)&v7 init];
  if (result)
  {
    result->_numberOfSections = sections;
    result->_numberOfItemsPerSection = section;
  }

  return result;
}

@end