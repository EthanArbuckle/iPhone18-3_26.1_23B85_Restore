@interface SBCalendarIconImageProvider
+ (NSString)significantTimeChangeNotificationName;
+ (void)setSignificantTimeChangeNotificationName:(id)name;
- (SBCalendarIconImageProvider)init;
- (SBCalendarIconImageProvider)initWithDateTimeController:(id)controller;
- (SBCalendarIconImageProviderDelegate)delegate;
- (id)iconImageWithInfo:(SBIconImageInfo *)info;
- (id)iconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (id)iconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (id)preparedISIcon;
- (id)unmaskedIconImageWithInfo:(SBIconImageInfo *)info;
- (void)_startListeningForSignificantTimeChanges;
- (void)_stopListeningForSignificantTimeChanges;
- (void)controller:(id)controller didChangeOverrideDateFromDate:(id)date;
- (void)dealloc;
- (void)reloadIconImage;
@end

@implementation SBCalendarIconImageProvider

- (id)preparedISIcon
{
  dateTimeController = [(SBCalendarIconImageProvider *)self dateTimeController];
  currentDate = [dateTimeController currentDate];

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithDate:currentDate calendar:currentCalendar format:0];

  return v5;
}

- (SBCalendarIconImageProvider)init
{
  mEMORY[0x1E69D3FB8] = [MEMORY[0x1E69D3FB8] sharedInstance];
  v4 = [(SBCalendarIconImageProvider *)self initWithDateTimeController:mEMORY[0x1E69D3FB8]];

  return v4;
}

- (SBCalendarIconImageProvider)initWithDateTimeController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = SBCalendarIconImageProvider;
  v6 = [(SBCalendarIconImageProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dateTimeController, controller);
    [controllerCopy addObserver:v7];
    overrideDate = [controllerCopy overrideDate];
    if (overrideDate)
    {
      [(SBCalendarIconImageProvider *)v7 controller:controllerCopy didChangeOverrideDateFromDate:0];
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

+ (void)setSignificantTimeChangeNotificationName:(id)name
{
  v3 = [name copy];
  v4 = significantTimeChangeNotificationName;
  significantTimeChangeNotificationName = v3;

  MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)reloadIconImage
{
  delegate = [(SBCalendarIconImageProvider *)self delegate];
  [delegate calendarIconImageProviderHasChanged:self];
}

- (void)_startListeningForSignificantTimeChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  significantTimeChangeNotificationName = [objc_opt_class() significantTimeChangeNotificationName];
  [defaultCenter addObserver:self selector:sel_reloadIconImage name:significantTimeChangeNotificationName object:0];
}

- (void)_stopListeningForSignificantTimeChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  significantTimeChangeNotificationName = [objc_opt_class() significantTimeChangeNotificationName];
  [defaultCenter removeObserver:self name:significantTimeChangeNotificationName object:0];
}

- (id)iconImageWithInfo:(SBIconImageInfo *)info
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v10 = objc_autoreleasePoolPush();
  preparedISIcon = [(SBCalendarIconImageProvider *)self preparedISIcon];
  v12 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v8 scale:{v7, v6}];
  v13 = [preparedISIcon prepareImageForDescriptor:v12];
  v14 = MEMORY[0x1E69DCAB8];
  cGImage = [v13 CGImage];
  [v13 scale];
  v16 = [v14 imageWithCGImage:cGImage scale:0 orientation:?];

  objc_autoreleasePoolPop(v10);

  return v16;
}

- (id)unmaskedIconImageWithInfo:(SBIconImageInfo *)info
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v10 = objc_autoreleasePoolPush();
  preparedISIcon = [(SBCalendarIconImageProvider *)self preparedISIcon];
  v12 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v8 scale:{v7, v6}];
  [v12 setShouldApplyMask:0];
  v13 = [preparedISIcon prepareImageForDescriptor:v12];
  v14 = MEMORY[0x1E69DCAB8];
  cGImage = [v13 CGImage];
  [v13 scale];
  v16 = [v14 imageWithCGImage:cGImage scale:0 orientation:?];

  objc_autoreleasePoolPop(v10);

  return v16;
}

- (id)iconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  collectionCopy = collection;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  infoCopy = info;
  v14 = objc_autoreleasePoolPush();
  preparedISIcon = [(SBCalendarIconImageProvider *)self preparedISIcon];
  v16 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v11 scale:{v10, v9}];
  v17 = SBHIconServicesOptionsForImageOptions(collectionCopy);
  SBHModifyImageDescriptorWithTraitCollection(v16, infoCopy, v17);
  v18 = [preparedISIcon prepareImageForDescriptor:v16];
  v19 = MEMORY[0x1E69DCAB8];
  cGImage = [v18 CGImage];
  [v18 scale];
  v21 = [v19 imageWithCGImage:cGImage scale:0 orientation:?];

  objc_autoreleasePoolPop(v14);

  return v21;
}

- (id)iconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  collectionCopy = collection;
  v9 = v7;
  v10 = v6;
  v11 = v5;
  infoCopy = info;
  v14 = objc_autoreleasePoolPush();
  preparedISIcon = [(SBCalendarIconImageProvider *)self preparedISIcon];
  v16 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:v11 scale:{v10, v9}];
  v17 = SBHIconServicesOptionsForImageOptions(collectionCopy);
  SBHModifyImageDescriptorWithTraitCollection(v16, infoCopy, v17);
  v18 = [preparedISIcon prepareImageForDescriptor:v16];
  iCRIconLayer = [v18 ICRIconLayer];

  objc_autoreleasePoolPop(v14);

  return iCRIconLayer;
}

- (void)controller:(id)controller didChangeOverrideDateFromDate:(id)date
{
  overrideDate = [controller overrideDate];
  v7 = overrideDate;
  if (date || !overrideDate)
  {
    if (date && !overrideDate)
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