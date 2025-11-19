@interface WGCalendarWidgetInfo
+ (BOOL)isCalendarExtension:(id)a3;
- (WGCalendarWidgetInfo)initWithExtension:(id)a3;
- (id)_queue_iconWithOutlineForWidgetWithIdentifier:(id)a3 extension:(id)a4;
- (id)_queue_iconWithSize:(CGSize)a3 scale:(double)a4 forWidgetWithIdentifier:(id)a5 extension:(id)a6;
- (void)_handleSignificantTimeChange:(id)a3;
- (void)_resetIconsImpl;
@end

@implementation WGCalendarWidgetInfo

+ (BOOL)isCalendarExtension:(id)a3
{
  v3 = [a3 identifier];
  if ([v3 hasPrefix:@"com.apple.mobilecal"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasPrefix:@"com.apple.UpNextWidget"];
  }

  return v4;
}

- (WGCalendarWidgetInfo)initWithExtension:(id)a3
{
  v7.receiver = self;
  v7.super_class = WGCalendarWidgetInfo;
  v3 = [(WGWidgetInfo *)&v7 initWithExtension:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    [(WGCalendarWidgetInfo *)v3 _setDate:v4];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v3 selector:sel__handleSignificantTimeChange_ name:*MEMORY[0x277D766F0] object:0];
  }

  return v3;
}

- (id)_queue_iconWithSize:(CGSize)a3 scale:(double)a4 forWidgetWithIdentifier:(id)a5 extension:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a5;
  v12 = a6;
  v13 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v14 = [MEMORY[0x277CBEA80] currentCalendar];
  v15 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithDate:v13 calendar:v14 format:0];
  v16 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:width scale:{height, a4}];
  v17 = [v15 imageForImageDescriptor:v16];
  v18 = MEMORY[0x277D755B8];
  v19 = [v17 CGImage];
  [v17 scale];
  v20 = [v18 imageWithCGImage:v19 scale:0 orientation:?];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v25.receiver = self;
    v25.super_class = WGCalendarWidgetInfo;
    v22 = [(WGWidgetInfo *)&v25 _queue_iconWithSize:v11 scale:v12 forWidgetWithIdentifier:width extension:height, a4];
  }

  v23 = v22;

  return v23;
}

- (id)_queue_iconWithOutlineForWidgetWithIdentifier:(id)a3 extension:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v9 = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithDate:v8 calendar:v9 format:0];
  v11 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B230]];
  [v11 setDrawBorder:1];
  v12 = [v10 imageForImageDescriptor:v11];
  v13 = MEMORY[0x277D755B8];
  v14 = [v12 CGImage];
  [v12 scale];
  v15 = [v13 imageWithCGImage:v14 scale:0 orientation:?];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = WGCalendarWidgetInfo;
    v17 = [(WGWidgetInfo *)&v20 _queue_iconWithOutlineForWidgetWithIdentifier:v6 extension:v7];
  }

  v18 = v17;

  return v18;
}

- (void)_resetIconsImpl
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [(WGCalendarWidgetInfo *)self _setDate:v3];

  v4.receiver = self;
  v4.super_class = WGCalendarWidgetInfo;
  [(WGWidgetInfo *)&v4 _resetIconsImpl];
}

- (void)_handleSignificantTimeChange:(id)a3
{
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  if (([v4 isDateInToday:self->_date] & 1) == 0)
  {
    [(WGWidgetInfo *)self _resetIcons];
  }
}

@end