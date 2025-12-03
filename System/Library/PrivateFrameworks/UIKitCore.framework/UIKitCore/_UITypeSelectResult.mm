@interface _UITypeSelectResult
- (_UITypeSelectResult)initWithTypeSelectItemResults:(id)results preferredItem:(id)item;
@end

@implementation _UITypeSelectResult

- (_UITypeSelectResult)initWithTypeSelectItemResults:(id)results preferredItem:(id)item
{
  resultsCopy = results;
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = _UITypeSelectResult;
  v8 = [(_UITypeSelectResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(_UITypeSelectResult *)v8 setTypeSelectItemResults:resultsCopy];
    [(_UITypeSelectResult *)v9 setPreferredItem:itemCopy];
  }

  return v9;
}

@end