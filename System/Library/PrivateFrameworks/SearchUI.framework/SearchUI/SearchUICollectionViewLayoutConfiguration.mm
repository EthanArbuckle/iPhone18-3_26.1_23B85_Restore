@interface SearchUICollectionViewLayoutConfiguration
- (SearchUICollectionViewLayoutConfiguration)initWithSnapshot:(id)snapshot;
@end

@implementation SearchUICollectionViewLayoutConfiguration

- (SearchUICollectionViewLayoutConfiguration)initWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v21.receiver = self;
  v21.super_class = SearchUICollectionViewLayoutConfiguration;
  v5 = [(SearchUICollectionViewLayoutConfiguration *)&v21 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    sectionIdentifiers = [snapshotCopy sectionIdentifiers];
    v9 = [sectionIdentifiers count];

    if (v9)
    {
      v10 = 0;
      do
      {
        sectionIdentifiers2 = [snapshotCopy sectionIdentifiers];
        v12 = [sectionIdentifiers2 objectAtIndexedSubscript:v10];

        if ([v12 shouldHeightMatchSection])
        {
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
          [(NSSet *)v6 addObject:v13];
        }

        if ([v12 isMemberOfClass:objc_opt_class()])
        {
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
          [(NSSet *)v7 addObject:v14];
        }

        ++v10;
        sectionIdentifiers3 = [snapshotCopy sectionIdentifiers];
        v16 = [sectionIdentifiers3 count];
      }

      while (v10 < v16);
    }

    sectionIndexesForHeightMatching = v5->_sectionIndexesForHeightMatching;
    v5->_sectionIndexesForHeightMatching = v6;
    v18 = v6;

    sectionIndexesUsingListLayout = v5->_sectionIndexesUsingListLayout;
    v5->_sectionIndexesUsingListLayout = v7;
  }

  return v5;
}

@end