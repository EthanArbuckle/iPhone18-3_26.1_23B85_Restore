@interface _PSInteractionInformation
- (_PSInteractionInformation)initWithHandle:(id)handle interactionInformation:(id)information;
@end

@implementation _PSInteractionInformation

- (_PSInteractionInformation)initWithHandle:(id)handle interactionInformation:(id)information
{
  handleCopy = handle;
  informationCopy = information;
  v12.receiver = self;
  v12.super_class = _PSInteractionInformation;
  v9 = [(_PSInteractionInformation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountHandle, handle);
    objc_storeStrong(&v10->_interactionInfo, information);
  }

  return v10;
}

@end