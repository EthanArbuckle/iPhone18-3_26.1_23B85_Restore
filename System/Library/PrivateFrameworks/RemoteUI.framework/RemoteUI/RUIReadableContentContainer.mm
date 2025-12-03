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
  subviews = [(RUIReadableContentContainer *)self subviews];
  firstObject = [subviews firstObject];

  if (firstObject)
  {
    [firstObject setTranslatesAutoresizingMaskIntoConstraints:0];
    [firstObject sizeToFit];
    v15 = MEMORY[0x277CCAAD0];
    topAnchor = [firstObject topAnchor];
    readableContentGuide = [(RUIReadableContentContainer *)self readableContentGuide];
    topAnchor2 = [readableContentGuide topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[0] = v19;
    leadingAnchor = [firstObject leadingAnchor];
    readableContentGuide2 = [(RUIReadableContentContainer *)self readableContentGuide];
    leadingAnchor2 = [readableContentGuide2 leadingAnchor];
    v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v24[1] = v14;
    trailingAnchor = [firstObject trailingAnchor];
    readableContentGuide3 = [(RUIReadableContentContainer *)self readableContentGuide];
    trailingAnchor2 = [readableContentGuide3 trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v24[2] = v8;
    bottomAnchor = [firstObject bottomAnchor];
    readableContentGuide4 = [(RUIReadableContentContainer *)self readableContentGuide];
    bottomAnchor2 = [readableContentGuide4 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v24[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
    [v15 activateConstraints:v13];
  }
}

@end