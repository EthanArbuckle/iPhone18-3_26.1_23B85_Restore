@interface ResetTimerIntent
- (ResetTimerIntent)init;
- (ResetTimerIntent)initWithCoder:(id)a3;
- (ResetTimerIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5;
- (ResetTimerIntent)initWithIdentifier:(id)a3 backingStore:(id)a4;
@end

@implementation ResetTimerIntent

- (ResetTimerIntent)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ResetTimerIntent();
  return [(ResetTimerIntent *)&v3 init];
}

- (ResetTimerIntent)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ResetTimerIntent();
  v4 = a3;
  v5 = [(ResetTimerIntent *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (ResetTimerIntent)initWithIdentifier:(id)a3 backingStore:(id)a4
{
  if (a3)
  {
    sub_2693B3750();
    v6 = a4;
    v7 = sub_2693B3740();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ResetTimerIntent();
  v9 = [(ResetTimerIntent *)&v11 initWithIdentifier:v7 backingStore:a4];

  return v9;
}

- (ResetTimerIntent)initWithDomain:(id)a3 verb:(id)a4 parametersByName:(id)a5
{
  if (a5)
  {
    sub_2693B3720();
    v8 = a3;
    v9 = a4;
    v10 = sub_2693B3710();
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v10 = 0;
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for ResetTimerIntent();
  v13 = [(ResetTimerIntent *)&v15 initWithDomain:a3 verb:a4 parametersByName:v10];

  return v13;
}

@end