@interface PhotosSearchBar.WrappedSearchBar.Coordinator
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (void)tapAction:(id)a3;
- (void)textViewDidBeginEditing:(void *)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
@end

@implementation PhotosSearchBar.WrappedSearchBar.Coordinator

- (void)textViewDidBeginEditing:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_1C1181880(v4);
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C1181964(v4);
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C1181AC4(v4);
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1C1181CD4(v8, v9, v10);

  return v12;
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = sub_1C1265EA0();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_1C1182284(v12, location, length, v9, v11);

  return length & 1;
}

- (void)tapAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C1183010();
}

@end