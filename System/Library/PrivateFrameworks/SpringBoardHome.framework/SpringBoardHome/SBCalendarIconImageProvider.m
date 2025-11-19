@interface SBCalendarIconImageProvider
+ (NSString)significantTimeChangeNotificationName;
+ (void)setSignificantTimeChangeNotificationName:(id)a3;
- (SBCalendarIconImageProvider)init;
- (SBCalendarIconImageProvider)initWithDateTimeController:(id)a3;
- (SBCalendarIconImageProviderDelegate)delegate;
- (id)iconImageWithInfo:(SBIconImageInfo *)a3;
- (id)iconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
- (id)iconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
- (id)preparedISIcon;
- (id)unmaskedIconImageWithInfo:(SBIconImageInfo *)a3;
- (void)_startListeningForSignificantTimeChanges;
- (void)_stopListeningForSignificantTimeChanges;
- (void)controller:(id)a3 didChangeOverrideDateFromDate:(id)a4;
- (void)dealloc;
- (void)reloadIconImage;
@end

@implementation SBCalendarIconImageProvider

- (id)preparedISIcon
{
  v2 = [(SBCalendarIconImageProvider *)self dateTimeController];
  v3 = [v2 currentDate];

  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithDate:v3 calendar:v4 format:0];

  return v5;
}

- (SBCalendarIconImageProvider)init
{
  v3 = [MEMORY[0x1E69D3FB8] sharedInstance];
  v4 = [(SBCalendarIconImageProvider *)self initWithDateTimeController:v3];

  return v4;
}

- (SBCalendarIconImageProvider)initWithDateTimeController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBCalendarIconImageProvider;
  v6 = [(SBCalendarIconImageProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dateTimeController, a3);
    [v5 addObserver:v7];
    v8 = [v5 overrideDate];
    if (v8)
    {
      [(SBCalendarIconImageProvider *)v7 controller:v5 didChangeOverrideDateFromDate:0];
    }

    else
    {
      [(SBCalendarIconImageProvider *)v7 _startListeningForSignificantTimeChanges];
    }
  }

  return v7;
}

- (void)dealloc
{
  [(SBFDateTimeController *)self->_dateTimeController removeObserver:self];
  [(SBCalendarIconImageProvider *)self _stopListeningForSignificantTimeChanges];
  v3.receiver = self;
  v3.super_class = SBCalendarIconImageProvider;
  [(SBCalendarIconImageProvider *)&v3 dealloc];
}

+ (NSString)significantTimeChangeNotificationName
{
  if (significantTimeChangeNotificationName)
  {
    return significantTimeChangeNotificationName;
  }

  else
  {
    return *MEMORY[0x1E69DDB88];
  }
}

+ (void)setSignificantTimeChangeNotificationName:(id)a3
{
  v3 = [a3 copy];
  v4 = significantTimeChangeNotificationName;
  significantTimeChangeNotificationName = v3;

  MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)reloadIconImage
{
  v3 = [(SBCalendarIconImageProvider *)self delegate];
  [v3 calendarIconImageProviderHasChanged:self];
}

- (void)_startListeningForSignificantTimeChanges
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [objc_opt_class() significantTimeChangeNotificationName];
  [v4 addObserver:self selector:sel_reloadIconImage name:v3 object:0];
}

- (void)_stopListeningForSignificantTimeChanges
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [objc_opt_class() significantTimeChangeNotificationName];
  [v4 removeObserver:self name:v3 object:0];
}

- (id)iconImageWithInfo:(SBIconImageInfo *)a3
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v10 = objc_autoreleasePoolPush();
  v11 = [(SBCalendarIconImageProvider *)self preparedISIcon];
  v12 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v8 scale:{v7, v6}];
  v13 = [v11 prepareImageForDescriptor:v12];
  v14 = MEMORY[0x1E69DCAB8];
  v15 = [v13 CGImage];
  [v13 scale];
  v16 = [v14 imageWithCGImage:v15 scale:0 orientation:?];

  objc_autoreleasePoolPop(v10);

  return v16;
}

- (id)unmaskedIconImageWithInfo:(SBIconImageInfo *)a3
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v10 = objc_autoreleasePoolPush();
  v11 = [(SBCalendarIconImageProvider *)self preparedISIcon];
  v12 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v8 scale:{v7, v6}];
  [v12 setShouldApplyMask:0];
  v13 = [v11 prepareImageForDescriptor:v12];
  v14 = MEMORY[0x1E69DCAB8];
  v15 = [v13 CGImage];
  [v13 scale];
  v16 = [v14 imageWithCGImage:v15 scale:0 orientation:?];

  objc_autoreleasePoolPop(v10);

  return v16;
}

- (id)iconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v13 = a3;
  v14 = objc_autoreleasePoolPush();
  v15 = [(SBCalendarIconImageProvider *)self preparedISIcon];
  v16 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v11 scale:{v10, v9}];
  v17 = SBHIconServicesOptionsForImageOptions(v8);
  SBHModifyImageDescriptorWithTraitCollection(v16, v13, v17);
  v18 = [v15 prepareImageForDescriptor:v16];
  v19 = MEMORY[0x1E69DCAB8];
  v20 = [v18 CGImage];
  [v18 scale];
  v21 = [v19 imageWithCGImage:v20 scale:0 orientation:?];

  objc_autoreleasePoolPop(v14);

  return v21;
}

- (id)iconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  v13 = a3;
  v14 = objc_autoreleasePoolPush();
  v15 = [(SBCalendarIconImageProvider *)self preparedISIcon];
  v16 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v11 scale:{v10, v9}];
  v17 = SBHIconServicesOptionsForImageOptions(v8);
  SBHModifyImageDescriptorWithTraitCollection(v16, v13, v17);
  v18 = [v15 prepareImageForDescriptor:v16];
  v19 = [v18 ICRIconLayer];

  objc_autoreleasePoolPop(v14);

  return v19;
}

- (void)controller:(id)a3 didChangeOverrideDateFromDate:(id)a4
{
  v6 = [a3 overrideDate];
  v7 = v6;
  if (a4 || !v6)
  {
    if (a4 && !v6)
    {
      [(SBCalendarIconImageProvider *)self _startListeningForSignificantTimeChanges];
    }
  }

  else
  {
    [(SBCalendarIconImageProvider *)self _stopListeningForSignificantTimeChanges];
  }

  [(SBCalendarIconImageProvider *)self reloadIconImage];
}

- (SBCalendarIconImageProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end