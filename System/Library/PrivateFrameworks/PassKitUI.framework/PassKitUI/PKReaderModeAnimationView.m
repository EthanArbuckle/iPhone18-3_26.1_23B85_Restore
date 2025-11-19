@interface PKReaderModeAnimationView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKReaderModeAnimationView)initWithAssetName:(id)a3 forPhoneTarget:(BOOL)a4;
- (PKReaderModeAnimationView)initWithFrame:(CGRect)a3 assetName:(id)a4 forPhoneTarget:(BOOL)a5;
- (unint64_t)animationStateForProvisioningViewState:(unint64_t)a3;
- (void)_setState:(unint64_t)a3 animated:(BOOL)a4;
- (void)setDigitalCardImage:(id)a3;
- (void)setImage:(id)a3 forPublishedObjectWithName:(id)a4;
- (void)setState:(unint64_t)a3 animated:(BOOL)a4;
@end

@implementation PKReaderModeAnimationView

- (PKReaderModeAnimationView)initWithAssetName:(id)a3 forPhoneTarget:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E69DCEB0];
  v7 = a3;
  v8 = [v6 mainScreen];
  [v8 bounds];
  v9 = [(PKReaderModeAnimationView *)self initWithFrame:v7 assetName:v4 forPhoneTarget:0.0, 0.0];

  return v9;
}

- (PKReaderModeAnimationView)initWithFrame:(CGRect)a3 assetName:(id)a4 forPhoneTarget:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v33.receiver = self;
  v33.super_class = PKReaderModeAnimationView;
  v12 = [(PKReaderModeAnimationView *)&v33 initWithFrame:x, y, width, height];
  if (v12)
  {
    v13 = PKPassKitUIBundle();
    v14 = [v13 URLForResource:v11 withExtension:@"caar"];

    v15 = *MEMORY[0x1E6979EF0];
    v32 = 0;
    v16 = [MEMORY[0x1E6979400] packageWithContentsOfURL:v14 type:v15 options:0 error:&v32];
    v17 = v32;
    package = v12->_package;
    v12->_package = v16;

    if (!v12->_package)
    {
      v19 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.m11) = 138543874;
        *(&buf.m11 + 4) = v14;
        WORD2(buf.m12) = 2114;
        *(&buf.m12 + 6) = v11;
        HIWORD(buf.m13) = 2114;
        *&buf.m14 = v17;
        _os_log_impl(&dword_1BD026000, v19, OS_LOG_TYPE_DEFAULT, "Error loading mica animation archive URL: %{public}@, asset name: %{public}@, error: %{public}@", &buf, 0x20u);
      }
    }

    v12->_isPhoneTarget = a5;
    v20 = [(CAPackage *)v12->_package rootLayer];
    phoneLayer = v12->_phoneLayer;
    v12->_phoneLayer = v20;

    [(CALayer *)v12->_phoneLayer setGeometryFlipped:[(CAPackage *)v12->_package isGeometryFlipped]];
    [(CALayer *)v12->_phoneLayer size];
    v23 = width / v22;
    v24 = [(PKReaderModeAnimationView *)v12 layer];
    CATransform3DMakeScale(&buf, v23, v23, 1.0);
    [v24 setTransform:&buf];

    [(CALayer *)v12->_phoneLayer size];
    v26 = v23 * v25;
    [(CALayer *)v12->_phoneLayer size];
    [(PKReaderModeAnimationView *)v12 setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v26, v23 * v27];
    v28 = [(PKReaderModeAnimationView *)v12 layer];
    [v28 addSublayer:v12->_phoneLayer];

    v29 = [objc_alloc(MEMORY[0x1E69794D0]) initWithLayer:v12->_phoneLayer];
    stateController = v12->_stateController;
    v12->_stateController = v29;
  }

  return v12;
}

- (void)setDigitalCardImage:(id)a3
{
  if (self->_isPhoneTarget)
  {
    v3 = @"Digital_Card_Phone";
  }

  else
  {
    v3 = @"Digital_Card";
  }

  [(PKReaderModeAnimationView *)self setImage:a3 forPublishedObjectWithName:v3];
}

- (void)setImage:(id)a3 forPublishedObjectWithName:(id)a4
{
  if (a3)
  {
    v7 = a3;
    v8 = a4;
    v9 = [a3 CGImage];
    v10 = [(CAPackage *)self->_package publishedObjectWithName:v8];

    [v10 setContents:v9];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(CALayer *)self->_phoneLayer size:a3.width];
  v6 = width * (v5 / v4);
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)setState:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->_state = a3;
  v6 = [(PKReaderModeAnimationView *)self animationStateForProvisioningViewState:?];

  [(PKReaderModeAnimationView *)self _setState:v6 animated:v4];
}

- (unint64_t)animationStateForProvisioningViewState:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1BE116888[a3 - 1];
  }
}

- (void)_setState:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    if (a3 == 2)
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
      if (a3 != 1)
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
    if (v4)
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