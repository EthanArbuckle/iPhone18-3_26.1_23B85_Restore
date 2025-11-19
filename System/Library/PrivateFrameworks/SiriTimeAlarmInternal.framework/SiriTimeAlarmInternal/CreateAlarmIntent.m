@interface CreateAlarmIntent
- (CreateAlarmIntent)init;
- (CreateAlarmIntent)initWithCoder:(id)a3;
- (CreateAlarmIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (CreateAlarmIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation CreateAlarmIntent

- (CreateAlarmIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CreateAlarmIntent();
  return [(CreateAlarmIntent *)&v3 init];
}

- (CreateAlarmIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CreateAlarmIntent();
  v4 = a3;
  v5 = [(CreateAlarmIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (CreateAlarmIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    sub_2692C7830();
    v6 = a4;
    v7 = sub_2692C7820();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CreateAlarmIntent();
  v9 = [(CreateAlarmIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (CreateAlarmIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  if (a5)
  {
    sub_2692C77E0();
    v8 = a3;
    v9 = a4;
    v10 = sub_2692C77D0();
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for CreateAlarmIntent();
  v13 = [(CreateAlarmIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10];

  return v13;
}

@end