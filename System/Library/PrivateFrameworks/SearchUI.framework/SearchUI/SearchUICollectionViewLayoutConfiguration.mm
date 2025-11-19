@interface SearchUICollectionViewLayoutConfiguration
- (SearchUICollectionViewLayoutConfiguration)initWithSnapshot:(id)a3;
@end

@implementation SearchUICollectionViewLayoutConfiguration

- (SearchUICollectionViewLayoutConfiguration)initWithSnapshot:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SearchUICollectionViewLayoutConfiguration;
  v5 = [(SearchUICollectionViewLayoutConfiguration *)&v21 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v8 = [v4 sectionIdentifiers];
    v9 = [v8 count];

    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = [v4 sectionIdentifiers];
        v12 = [v11 objectAtIndexedSubscript:v10];

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
        v15 = [v4 sectionIdentifiers];
        v16 = [v15 count];
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