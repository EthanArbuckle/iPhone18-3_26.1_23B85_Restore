@interface WGCalendarWidgetInfo
+ (BOOL)isCalendarExtension:(id)extension;
- (WGCalendarWidgetInfo)initWithExtension:(id)extension;
- (id)_queue_iconWithOutlineForWidgetWithIdentifier:(id)identifier extension:(id)extension;
- (id)_queue_iconWithSize:(CGSize)size scale:(double)scale forWidgetWithIdentifier:(id)identifier extension:(id)extension;
- (void)_handleSignificantTimeChange:(id)change;
- (void)_resetIconsImpl;
@end

@implementation WGCalendarWidgetInfo

+ (BOOL)isCalendarExtension:(id)extension
{
  identifier = [extension identifier];
  if ([identifier hasPrefix:@"com.apple.mobilecal"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [identifier hasPrefix:@"com.apple.UpNextWidget"];
  }

  return v4;
}

- (WGCalendarWidgetInfo)initWithExtension:(id)extension
{
  v7.receiver = self;
  v7.super_class = WGCalendarWidgetInfo;
  v3 = [(WGWidgetInfo *)&v7 initWithExtension:extension];
  if (v3)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(WGCalendarWidgetInfo *)v3 _setDate:date];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleSignificantTimeChange_ name:*MEMORY[0x277D766F0] object:0];
  }

  return v3;
}

- (id)_queue_iconWithSize:(CGSize)size scale:(double)scale forWidgetWithIdentifier:(id)identifier extension:(id)extension
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  extensionCopy = extension;
  v13 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v15 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithDate:v13 calendar:currentCalendar format:0];
  v16 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:width scale:{height, scale}];
  v17 = [v15 imageForImageDescriptor:v16];
  v18 = MEMORY[0x277D755B8];
  cGImage = [v17 CGImage];
  [v17 scale];
  v20 = [v18 imageWithCGImage:cGImage scale:0 orientation:?];
  v21 = v20;
  if (v20)
  {
    scale = v20;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = WGCalendarWidgetInfo;
    scale = [(WGWidgetInfo *)&v25 _queue_iconWithSize:identifierCopy scale:extensionCopy forWidgetWithIdentifier:width extension:height, scale];
  }

  v23 = scale;

  return v23;
}

- (id)_queue_iconWithOutlineForWidgetWithIdentifier:(id)identifier extension:(id)extension
{
  identifierCopy = identifier;
  extensionCopy = extension;
  v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithDate:v8 calendar:currentCalendar format:0];
  v11 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B230]];
  [v11 setDrawBorder:1];
  v12 = [v10 imageForImageDescriptor:v11];
  v13 = MEMORY[0x277D755B8];
  cGImage = [v12 CGImage];
  [v12 scale];
  v15 = [v13 imageWithCGImage:cGImage scale:0 orientation:?];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = WGCalendarWidgetInfo;
    v17 = [(WGWidgetInfo *)&v20 _queue_iconWithOutlineForWidgetWithIdentifier:identifierCopy extension:extensionCopy];
  }

  v18 = v17;

  return v18;
}

- (void)_resetIconsImpl
{
  date = [MEMORY[0x277CBEAA8] date];
  [(WGCalendarWidgetInfo *)self _setDate:date];

  v4.receiver = self;
  v4.super_class = WGCalendarWidgetInfo;
  [(WGWidgetInfo *)&v4 _resetIconsImpl];
}

- (void)_handleSignificantTimeChange:(id)change
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  if (([currentCalendar isDateInToday:self->_date] & 1) == 0)
  {
    [(WGWidgetInfo *)self _resetIcons];
  }
}

@end