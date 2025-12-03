@interface PKReaderModeAnimationView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKReaderModeAnimationView)initWithAssetName:(id)name forPhoneTarget:(BOOL)target;
- (PKReaderModeAnimationView)initWithFrame:(CGRect)frame assetName:(id)name forPhoneTarget:(BOOL)target;
- (unint64_t)animationStateForProvisioningViewState:(unint64_t)state;
- (void)_setState:(unint64_t)state animated:(BOOL)animated;
- (void)setDigitalCardImage:(id)image;
- (void)setImage:(id)image forPublishedObjectWithName:(id)name;
- (void)setState:(unint64_t)state animated:(BOOL)animated;
@end

@implementation PKReaderModeAnimationView

- (PKReaderModeAnimationView)initWithAssetName:(id)name forPhoneTarget:(BOOL)target
{
  targetCopy = target;
  v6 = MEMORY[0x1E69DCEB0];
  nameCopy = name;
  mainScreen = [v6 mainScreen];
  [mainScreen bounds];
  v9 = [(PKReaderModeAnimationView *)self initWithFrame:nameCopy assetName:targetCopy forPhoneTarget:0.0, 0.0];

  return v9;
}

- (PKReaderModeAnimationView)initWithFrame:(CGRect)frame assetName:(id)name forPhoneTarget:(BOOL)target
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v33.receiver = self;
  v33.super_class = PKReaderModeAnimationView;
  height = [(PKReaderModeAnimationView *)&v33 initWithFrame:x, y, width, height];
  if (height)
  {
    v13 = PKPassKitUIBundle();
    v14 = [v13 URLForResource:nameCopy withExtension:@"caar"];

    v15 = *MEMORY[0x1E6979EF0];
    v32 = 0;
    v16 = [MEMORY[0x1E6979400] packageWithContentsOfURL:v14 type:v15 options:0 error:&v32];
    v17 = v32;
    package = height->_package;
    height->_package = v16;

    if (!height->_package)
    {
      v19 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.m11) = 138543874;
        *(&buf.m11 + 4) = v14;
        WORD2(buf.m12) = 2114;
        *(&buf.m12 + 6) = nameCopy;
        HIWORD(buf.m13) = 2114;
        *&buf.m14 = v17;
        _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "Error loading mica animation archive URL: %{public}@, asset name: %{public}@, error: %{public}@", &buf, 0x20u);
      }
    }

    height->_isPhoneTarget = target;
    rootLayer = [(CAPackage *)height->_package rootLayer];
    phoneLayer = height->_phoneLayer;
    height->_phoneLayer = rootLayer;

    [(CALayer *)height->_phoneLayer setGeometryFlipped:[(CAPackage *)height->_package isGeometryFlipped]];
    [(CALayer *)height->_phoneLayer size];
    v23 = width / v22;
    layer = [(PKReaderModeAnimationView *)height layer];
    CATransform3DMakeScale(&buf, v23, v23, 1.0);
    [layer setTransform:&buf];

    [(CALayer *)height->_phoneLayer size];
    v26 = v23 * v25;
    [(CALayer *)height->_phoneLayer size];
    [(PKReaderModeAnimationView *)height setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v26, v23 * v27];
    layer2 = [(PKReaderModeAnimationView *)height layer];
    [layer2 addSublayer:height->_phoneLayer];

    v29 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:height->_phoneLayer];
    stateController = height->_stateController;
    height->_stateController = v29;
  }

  return height;
}

- (void)setDigitalCardImage:(id)image
{
  if (self->_isPhoneTarget)
  {
    v3 = @"Digital_Card_Phone";
  }

  else
  {
    v3 = @"Digital_Card";
  }

  [(PKReaderModeAnimationView *)self setImage:image forPublishedObjectWithName:v3];
}

- (void)setImage:(id)image forPublishedObjectWithName:(id)name
{
  if (image)
  {
    imageCopy = image;
    nameCopy = name;
    cGImage = [image CGImage];
    v10 = [(CAPackage *)self->_package publishedObjectWithName:nameCopy];

    [v10 setContents:cGImage];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(CALayer *)self->_phoneLayer size:fits.width];
  v6 = width * (v5 / v4);
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)setState:(unint64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_state = state;
  v6 = [(PKReaderModeAnimationView *)self animationStateForProvisioningViewState:?];

  [(PKReaderModeAnimationView *)self _setState:v6 animated:animatedCopy];
}

- (unint64_t)animationStateForProvisioningViewState:(unint64_t)state
{
  if (state - 1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1BE116888[state - 1];
  }
}

- (void)_setState:(unint64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  if (state)
  {
    if (state == 2)
    {
      if (self->_isPhoneTarget)
      {
        v7 = @"Done_Phone";
      }

      else
      {
        v7 = @"Done";
      }

      v6 = v7;
    }

    else
    {
      if (state != 1)
      {
        return;
      }

      v6 = @"Hold";
    }
  }

  else
  {
    v6 = @"Animate On";
  }

  v12 = v6;
  v8 = [(CALayer *)self->_phoneLayer stateWithName:v6];
  if (v8)
  {
    stateController = self->_stateController;
    phoneLayer = self->_phoneLayer;
    if (animatedCopy)
    {
      LODWORD(v9) = 1.0;
      [(CAStateController *)stateController setState:v8 ofLayer:phoneLayer transitionSpeed:v9];
    }

    else
    {
      [(CAStateController *)stateController setState:v8 ofLayer:phoneLayer];
    }
  }
}

@end