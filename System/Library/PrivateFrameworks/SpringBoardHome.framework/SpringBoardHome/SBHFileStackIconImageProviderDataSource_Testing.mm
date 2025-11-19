@interface SBHFileStackIconImageProviderDataSource_Testing
- (SBHFileStackIconImageProviderDataSourceDelegate)delegate;
- (SBHFileStackIconImageProviderDataSource_Testing)init;
- (SBHFileStackIconImageProviderDataSource_Testing)initWithUniqueIdentifier:(id)a3;
- (id)fileStackIconImageProvider:(id)a3 iconImageWithInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6 forFileStackIcon:(id)a7;
- (void)dealloc;
- (void)handleSBHFileStackIconImageProviderDataSourceTestingNotification:(id)a3;
- (void)postNotificationFileStackIconDataSourceChanged;
- (void)startObservingNotification;
- (void)startSimulatePeriodicImageUpdate;
- (void)stopObservingNotification;
- (void)stopSimulatePeriodicImageUpdate;
@end

@implementation SBHFileStackIconImageProviderDataSource_Testing

- (SBHFileStackIconImageProviderDataSource_Testing)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];

  v5 = [(SBHFileStackIconImageProviderDataSource_Testing *)self initWithUniqueIdentifier:v4];
  return v5;
}

- (SBHFileStackIconImageProviderDataSource_Testing)initWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = SBHFileStackIconImageProviderDataSource_Testing;
  v5 = [(SBHFileStackIconImageProviderDataSource_Testing *)&v19 init];
  if (v5)
  {
    v6 = [v4 copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;

    [(SBHFileStackIconImageProviderDataSource_Testing *)v5 startObservingNotification];
    [(SBHFileStackIconImageProviderDataSource_Testing *)v5 startSimulatePeriodicImageUpdate];
    v5->_indexImage = 0;
    v5->_indexColor = 0;
    v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"square.stack", @"square.and.arrow.down", @"document.fill", @"paperclip", @"basketball", 0}];
    imageNames = v5->_imageNames;
    v5->_imageNames = v8;

    v10 = objc_alloc(MEMORY[0x1E695DEC8]);
    v11 = [MEMORY[0x1E69DC888] systemOrangeColor];
    v12 = [MEMORY[0x1E69DC888] systemYellowColor];
    v13 = [MEMORY[0x1E69DC888] systemGreenColor];
    v14 = [MEMORY[0x1E69DC888] systemRedColor];
    v15 = [MEMORY[0x1E69DC888] systemBlueColor];
    v16 = [v10 initWithObjects:{v11, v12, v13, v14, v15, 0}];
    imageColors = v5->_imageColors;
    v5->_imageColors = v16;
  }

  return v5;
}

- (void)dealloc
{
  [(SBHFileStackIconImageProviderDataSource_Testing *)self stopObservingNotification];
  [(SBHFileStackIconImageProviderDataSource_Testing *)self stopSimulatePeriodicImageUpdate];
  v3.receiver = self;
  v3.super_class = SBHFileStackIconImageProviderDataSource_Testing;
  [(SBHFileStackIconImageProviderDataSource_Testing *)&v3 dealloc];
}

- (id)fileStackIconImageProvider:(id)a3 iconImageWithInfo:(SBIconImageInfo *)a4 traitCollection:(id)a5 options:(unint64_t)a6 forFileStackIcon:(id)a7
{
  imageNames = self->_imageNames;
  indexImage = self->_indexImage;
  v10 = a4;
  v11 = [(NSArray *)imageNames objectAtIndex:indexImage];
  v12 = [(NSArray *)self->_imageColors objectAtIndex:self->_indexColor];
  v13 = self->_indexImage + 1;
  self->_indexImage = v13 % [(NSArray *)self->_imageNames count];
  v14 = self->_indexColor + 1;
  self->_indexColor = v14 % [(NSArray *)self->_imageColors count];
  v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:v11 compatibleWithTraitCollection:v10];

  v16 = [v15 imageWithRenderingMode:1];

  v17 = [v16 imageWithTintColor:v12];

  return v17;
}

- (void)startSimulatePeriodicImageUpdate
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E695DFF0];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __83__SBHFileStackIconImageProviderDataSource_Testing_startSimulatePeriodicImageUpdate__block_invoke;
  v10 = &unk_1E808BC98;
  objc_copyWeak(&v11, &location);
  v4 = [v3 scheduledTimerWithTimeInterval:1 repeats:&v7 block:10.0];
  timer = self->_timer;
  self->_timer = v4;

  v6 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [v6 addTimer:self->_timer forMode:*MEMORY[0x1E695DA28]];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)stopSimulatePeriodicImageUpdate
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)postNotificationFileStackIconDataSourceChanged
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"SBHFileStackIconImageProviderDataSourceTesting_UniqueIdentifier";
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];
  v8[1] = @"SBHFileStackIconImageProviderDataSourceTesting_URL";
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DFF8] URLWithString:@"/SBHFileStackIconImageProviderDataSource_Testing/TestingURL"];
  v9[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"SBHFileStackIconImageProviderDataSourceTesting_Notification" object:self userInfo:v6];
}

- (void)startObservingNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_handleSBHFileStackIconImageProviderDataSourceTestingNotification_ name:@"SBHFileStackIconImageProviderDataSourceTesting_Notification" object:0];
}

- (void)stopObservingNotification
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];
}

- (void)handleSBHFileStackIconImageProviderDataSourceTestingNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v9 = [v5 objectForKey:@"SBHFileStackIconImageProviderDataSourceTesting_UniqueIdentifier"];

  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:@"SBHFileStackIconImageProviderDataSourceTesting_URL"];

  v8 = [(SBHFileStackIconImageProviderDataSource_Testing *)self delegate];
  [v8 fileStackIconImageProviderDataSourceChanged:self uniqueIdentifier:v9 url:v7];
}

- (SBHFileStackIconImageProviderDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end