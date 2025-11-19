@interface _UITypeSelectResult
- (_UITypeSelectResult)initWithTypeSelectItemResults:(id)a3 preferredItem:(id)a4;
@end

@implementation _UITypeSelectResult

- (_UITypeSelectResult)initWithTypeSelectItemResults:(id)a3 preferredItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UITypeSelectResult;
  v8 = [(_UITypeSelectResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(_UITypeSelectResult *)v8 setTypeSelectItemResults:v6];
    [(_UITypeSelectResult *)v9 setPreferredItem:v7];
  }

  return v9;
}

@end