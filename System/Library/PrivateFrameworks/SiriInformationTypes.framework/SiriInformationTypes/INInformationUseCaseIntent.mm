@interface INInformationUseCaseIntent
- (INInformationUseCaseIntent)init;
- (INInformationUseCaseIntent)initWithCoder:(id)coder;
@end

@implementation INInformationUseCaseIntent

- (INInformationUseCaseIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for INInformationUseCaseIntent();
  return [(INInformationUseCaseIntent *)&v3 init];
}

- (INInformationUseCaseIntent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for INInformationUseCaseIntent();
  coderCopy = coder;
  v5 = [(INInformationUseCaseIntent *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end