@interface _PSInteractionInformation
- (_PSInteractionInformation)initWithHandle:(id)a3 interactionInformation:(id)a4;
@end

@implementation _PSInteractionInformation

- (_PSInteractionInformation)initWithHandle:(id)a3 interactionInformation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _PSInteractionInformation;
  v9 = [(_PSInteractionInformation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountHandle, a3);
    objc_storeStrong(&v10->_interactionInfo, a4);
  }

  return v10;
}

@end