@interface PXAssistantListViewItem
+ (id)itemWithTag:(int64_t)a3 title:(id)a4 enabled:(BOOL)a5;
+ (id)itemWithTitle:(id)a3;
+ (id)navigationItemWithTag:(int64_t)a3 title:(id)a4 subtitle:(id)a5 enabled:(BOOL)a6;
+ (id)ruleItemWithTag:(int64_t)a3 title:(id)a4 subtitle:(id)a5 detail:(id)a6 systemImageName:(id)a7 enabled:(BOOL)a8;
+ (id)selectionItemWithTag:(int64_t)a3 title:(id)a4 subtitle:(id)a5 selected:(BOOL)a6 enabled:(BOOL)a7;
- (PXAssistantListViewItem)init;
- (PXAssistantListViewItem)initWithType:(int64_t)a3 tag:(int64_t)a4 representedObject:(id)a5 title:(id)a6 subtitle:(id)a7 detail:(id)a8 systemImageName:(id)a9 selected:(BOOL)a10 enabled:(BOOL)a11;
@end

@implementation PXAssistantListViewItem

- (PXAssistantListViewItem)initWithType:(int64_t)a3 tag:(int64_t)a4 representedObject:(id)a5 title:(id)a6 subtitle:(id)a7 detail:(id)a8 systemImageName:(id)a9 selected:(BOOL)a10 enabled:(BOOL)a11
{
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  if (!v20)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PXAssistantListViewItem.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"title"}];
  }

  v36.receiver = self;
  v36.super_class = PXAssistantListViewItem;
  v24 = [(PXAssistantListViewItem *)&v36 init];
  v25 = v24;
  if (v24)
  {
    v24->_type = a3;
    v24->_tag = a4;
    objc_storeStrong(&v24->_representedObject, a5);
    v26 = [v20 copy];
    title = v25->_title;
    v25->_title = v26;

    v28 = [v21 copy];
    subtitle = v25->_subtitle;
    v25->_subtitle = v28;

    v30 = [v22 copy];
    detail = v25->_detail;
    v25->_detail = v30;

    v32 = [v23 copy];
    systemImageName = v25->_systemImageName;
    v25->_systemImageName = v32;

    v25->_selected = a10;
    v25->_enabled = a11;
  }

  return v25;
}

- (PXAssistantListViewItem)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssistantListViewItem.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXAssistantListViewItem init]"}];

  abort();
}

+ (id)ruleItemWithTag:(int64_t)a3 title:(id)a4 subtitle:(id)a5 detail:(id)a6 systemImageName:(id)a7 enabled:(BOOL)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  BYTE1(v20) = a8;
  LOBYTE(v20) = 0;
  v18 = [[a1 alloc] initWithType:4 tag:a3 representedObject:0 title:v17 subtitle:v16 detail:v15 systemImageName:v14 selected:v20 enabled:?];

  return v18;
}

+ (id)navigationItemWithTag:(int64_t)a3 title:(id)a4 subtitle:(id)a5 enabled:(BOOL)a6
{
  v10 = a5;
  v11 = a4;
  BYTE1(v14) = a6;
  LOBYTE(v14) = 0;
  v12 = [[a1 alloc] initWithType:2 tag:a3 representedObject:0 title:v11 subtitle:v10 detail:0 systemImageName:0 selected:v14 enabled:?];

  return v12;
}

+ (id)selectionItemWithTag:(int64_t)a3 title:(id)a4 subtitle:(id)a5 selected:(BOOL)a6 enabled:(BOOL)a7
{
  v12 = a5;
  v13 = a4;
  BYTE1(v16) = a7;
  LOBYTE(v16) = a6;
  v14 = [[a1 alloc] initWithType:1 tag:a3 representedObject:0 title:v13 subtitle:v12 detail:0 systemImageName:0 selected:v16 enabled:?];

  return v14;
}

+ (id)itemWithTag:(int64_t)a3 title:(id)a4 enabled:(BOOL)a5
{
  v8 = a4;
  BYTE1(v11) = a5;
  LOBYTE(v11) = 0;
  v9 = [[a1 alloc] initWithType:0 tag:a3 representedObject:0 title:v8 subtitle:0 detail:0 systemImageName:0 selected:v11 enabled:?];

  return v9;
}

+ (id)itemWithTitle:(id)a3
{
  v4 = a3;
  LOWORD(v7) = 256;
  v5 = [[a1 alloc] initWithType:0 tag:0 representedObject:0 title:v4 subtitle:0 detail:0 systemImageName:0 selected:v7 enabled:?];

  return v5;
}

@end