@interface SSRecommendedCarrierAppCell
+ (id)sharedLockupViewGroup;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (SSRecommendedCarrierAppCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_dummyArtwork;
- (id)_dummyLockup;
- (void)prepareForReuse;
- (void)setLockupRequest:(id)a3 withDelegate:(id)a4;
@end

@implementation SSRecommendedCarrierAppCell

+ (id)sharedLockupViewGroup
{
  if (sharedLockupViewGroup_onceToken != -1)
  {
    +[SSRecommendedCarrierAppCell sharedLockupViewGroup];
  }

  v3 = sharedLockupViewGroup_group;

  return v3;
}

uint64_t __52__SSRecommendedCarrierAppCell_sharedLockupViewGroup__block_invoke()
{
  sharedLockupViewGroup_group = [objc_alloc(MEMORY[0x277CEC2A0]) initWithName:@"SimSetupSupport"];

  return MEMORY[0x2821F96F8]();
}

- (SSRecommendedCarrierAppCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v18.receiver = self;
  v18.super_class = SSRecommendedCarrierAppCell;
  v4 = [(SSRecommendedCarrierAppCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(SSRecommendedCarrierAppCell *)v4 setBackgroundView:0];
    v6 = [MEMORY[0x277D75348] clearColor];
    [(SSRecommendedCarrierAppCell *)v5 setBackgroundColor:v6];

    v7 = objc_alloc(MEMORY[0x277CEC298]);
    v8 = [(SSRecommendedCarrierAppCell *)v5 contentView];
    [v8 bounds];
    v9 = [v7 initWithFrame:?];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [objc_opt_class() sharedLockupViewGroup];
    [v9 setGroup:v10];

    v11 = [(SSRecommendedCarrierAppCell *)v5 contentView];
    [v11 addSubview:v9];

    [(SSRecommendedCarrierAppCell *)v5 setLockupView:v9];
    v12 = MEMORY[0x277CCAAD0];
    v13 = [(SSRecommendedCarrierAppCell *)v5 contentView];
    LODWORD(v14) = 1148846080;
    v15 = [v9 _maps_constraintsEqualToEdgesOfView:v13 insets:10.0 priority:{16.0, 10.0, 16.0, v14}];
    v16 = [v15 allConstraints];
    [v12 activateConstraints:v16];
  }

  return v5;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  width = a3.width;
  v6 = [(SSRecommendedCarrierAppCell *)self lockupView:a3.width];
  [v6 sizeThatFits:{width, 1.79769313e308}];
  v8 = v7;

  v9 = v8 + 20.0;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)prepareForReuse
{
  request = self->_request;
  self->_request = 0;

  [(ASCLockupView *)self->_lockupView setRequest:0];
  v4 = [(SSRecommendedCarrierAppCell *)self _dummyLockup];
  [(ASCLockupView *)self->_lockupView setLockup:v4];

  [(ASCLockupView *)self->_lockupView setAutomaticallyPresentsProductDetails:0];
  v5.receiver = self;
  v5.super_class = SSRecommendedCarrierAppCell;
  [(SSRecommendedCarrierAppCell *)&v5 prepareForReuse];
}

- (void)setLockupRequest:(id)a3 withDelegate:(id)a4
{
  v7 = a3;
  if (v7)
  {
    v9 = v7;
    objc_storeStrong(&self->_request, a3);
    v8 = a4;
    [(ASCLockupView *)self->_lockupView setRequest:self->_request];
    [(ASCLockupView *)self->_lockupView setAutomaticallyPresentsProductDetails:1];
    [(ASCLockupView *)self->_lockupView setDelegate:v8];

    v7 = v9;
  }
}

- (id)_dummyLockup
{
  v3 = objc_alloc(MEMORY[0x277CEC280]);
  v4 = [objc_alloc(MEMORY[0x277CEC258]) initWithInt64:0];
  v5 = *MEMORY[0x277CEC230];
  v6 = [(SSRecommendedCarrierAppCell *)self _dummyArtwork];
  v7 = [v3 initWithID:v4 kind:v5 metrics:0 icon:v6 heading:0 title:0 subtitle:0 ageRating:0 offer:0];

  return v7;
}

- (id)_dummyArtwork
{
  v2 = objc_alloc(MEMORY[0x277CEC268]);
  v3 = [v2 initWithURLTemplate:&stru_28753DF48 width:*MEMORY[0x277CEC1D0] height:*MEMORY[0x277CEC1C0] decoration:*MEMORY[0x277CEC1E0] preferredCrop:0.0 preferredFormat:0.0];

  return v3;
}

@end