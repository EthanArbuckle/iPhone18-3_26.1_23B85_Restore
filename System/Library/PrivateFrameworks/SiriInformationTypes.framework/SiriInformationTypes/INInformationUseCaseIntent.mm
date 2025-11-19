@interface INInformationUseCaseIntent
- (INInformationUseCaseIntent)init;
- (INInformationUseCaseIntent)initWithCoder:(id)a3;
@end

@implementation INInformationUseCaseIntent

- (INInformationUseCaseIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for INInformationUseCaseIntent();
  return [(INInformationUseCaseIntent *)&v3 init];
}

- (INInformationUseCaseIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for INInformationUseCaseIntent();
  v4 = a3;
  v5 = [(INInformationUseCaseIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end