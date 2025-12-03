@interface PXAssistantListViewItem
+ (id)itemWithTag:(int64_t)tag title:(id)title enabled:(BOOL)enabled;
+ (id)itemWithTitle:(id)title;
+ (id)navigationItemWithTag:(int64_t)tag title:(id)title subtitle:(id)subtitle enabled:(BOOL)enabled;
+ (id)ruleItemWithTag:(int64_t)tag title:(id)title subtitle:(id)subtitle detail:(id)detail systemImageName:(id)name enabled:(BOOL)enabled;
+ (id)selectionItemWithTag:(int64_t)tag title:(id)title subtitle:(id)subtitle selected:(BOOL)selected enabled:(BOOL)enabled;
- (PXAssistantListViewItem)init;
- (PXAssistantListViewItem)initWithType:(int64_t)type tag:(int64_t)tag representedObject:(id)object title:(id)title subtitle:(id)subtitle detail:(id)detail systemImageName:(id)name selected:(BOOL)self0 enabled:(BOOL)self1;
@end

@implementation PXAssistantListViewItem

- (PXAssistantListViewItem)initWithType:(int64_t)type tag:(int64_t)tag representedObject:(id)object title:(id)title subtitle:(id)subtitle detail:(id)detail systemImageName:(id)name selected:(BOOL)self0 enabled:(BOOL)self1
{
  objectCopy = object;
  titleCopy = title;
  subtitleCopy = subtitle;
  detailCopy = detail;
  nameCopy = name;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantListViewItem.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"title"}];
  }

  v36.receiver = self;
  v36.super_class = PXAssistantListViewItem;
  v24 = [(PXAssistantListViewItem *)&v36 init];
  v25 = v24;
  if (v24)
  {
    v24->_type = type;
    v24->_tag = tag;
    objc_storeStrong(&v24->_representedObject, object);
    v26 = [titleCopy copy];
    title = v25->_title;
    v25->_title = v26;

    v28 = [subtitleCopy copy];
    subtitle = v25->_subtitle;
    v25->_subtitle = v28;

    v30 = [detailCopy copy];
    detail = v25->_detail;
    v25->_detail = v30;

    v32 = [nameCopy copy];
    systemImageName = v25->_systemImageName;
    v25->_systemImageName = v32;

    v25->_selected = selected;
    v25->_enabled = enabled;
  }

  return v25;
}

- (PXAssistantListViewItem)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantListViewItem.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXAssistantListViewItem init]"}];

  abort();
}

+ (id)ruleItemWithTag:(int64_t)tag title:(id)title subtitle:(id)subtitle detail:(id)detail systemImageName:(id)name enabled:(BOOL)enabled
{
  nameCopy = name;
  detailCopy = detail;
  subtitleCopy = subtitle;
  titleCopy = title;
  BYTE1(v20) = enabled;
  LOBYTE(v20) = 0;
  v18 = [[self alloc] initWithType:4 tag:tag representedObject:0 title:titleCopy subtitle:subtitleCopy detail:detailCopy systemImageName:nameCopy selected:v20 enabled:?];

  return v18;
}

+ (id)navigationItemWithTag:(int64_t)tag title:(id)title subtitle:(id)subtitle enabled:(BOOL)enabled
{
  subtitleCopy = subtitle;
  titleCopy = title;
  BYTE1(v14) = enabled;
  LOBYTE(v14) = 0;
  v12 = [[self alloc] initWithType:2 tag:tag representedObject:0 title:titleCopy subtitle:subtitleCopy detail:0 systemImageName:0 selected:v14 enabled:?];

  return v12;
}

+ (id)selectionItemWithTag:(int64_t)tag title:(id)title subtitle:(id)subtitle selected:(BOOL)selected enabled:(BOOL)enabled
{
  subtitleCopy = subtitle;
  titleCopy = title;
  BYTE1(v16) = enabled;
  LOBYTE(v16) = selected;
  v14 = [[self alloc] initWithType:1 tag:tag representedObject:0 title:titleCopy subtitle:subtitleCopy detail:0 systemImageName:0 selected:v16 enabled:?];

  return v14;
}

+ (id)itemWithTag:(int64_t)tag title:(id)title enabled:(BOOL)enabled
{
  titleCopy = title;
  BYTE1(v11) = enabled;
  LOBYTE(v11) = 0;
  v9 = [[self alloc] initWithType:0 tag:tag representedObject:0 title:titleCopy subtitle:0 detail:0 systemImageName:0 selected:v11 enabled:?];

  return v9;
}

+ (id)itemWithTitle:(id)title
{
  titleCopy = title;
  LOWORD(v7) = 256;
  v5 = [[self alloc] initWithType:0 tag:0 representedObject:0 title:titleCopy subtitle:0 detail:0 systemImageName:0 selected:v7 enabled:?];

  return v5;
}

@end