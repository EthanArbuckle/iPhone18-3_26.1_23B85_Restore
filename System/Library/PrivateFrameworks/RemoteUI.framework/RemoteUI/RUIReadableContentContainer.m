@interface RUIReadableContentContainer
- (void)updateConstraints;
@end

@implementation RUIReadableContentContainer

- (void)updateConstraints
{
  v24[4] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = RUIReadableContentContainer;
  [(RUIReadableContentContainer *)&v23 updateConstraints];
  v3 = [(RUIReadableContentContainer *)self subviews];
  v4 = [v3 firstObject];

  if (v4)
  {
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 sizeToFit];
    v15 = MEMORY[0x277CCAAD0];
    v21 = [v4 topAnchor];
    v22 = [(RUIReadableContentContainer *)self readableContentGuide];
    v20 = [v22 topAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v24[0] = v19;
    v17 = [v4 leadingAnchor];
    v18 = [(RUIReadableContentContainer *)self readableContentGuide];
    v16 = [v18 leadingAnchor];
    v14 = [v17 constraintEqualToAnchor:v16];
    v24[1] = v14;
    v5 = [v4 trailingAnchor];
    v6 = [(RUIReadableContentContainer *)self readableContentGuide];
    v7 = [v6 trailingAnchor];
    v8 = [v5 constraintEqualToAnchor:v7];
    v24[2] = v8;
    v9 = [v4 bottomAnchor];
    v10 = [(RUIReadableContentContainer *)self readableContentGuide];
    v11 = [v10 bottomAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    v24[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
    [v15 activateConstraints:v13];
  }
}

@end