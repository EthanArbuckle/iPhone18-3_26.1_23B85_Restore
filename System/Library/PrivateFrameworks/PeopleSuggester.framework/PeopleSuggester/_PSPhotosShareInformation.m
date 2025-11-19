@interface _PSPhotosShareInformation
- (_PSPhotosShareInformation)initWithInteractionCount:(unint64_t)a3 totalInteractionCount:(unint64_t)a4;
@end

@implementation _PSPhotosShareInformation

- (_PSPhotosShareInformation)initWithInteractionCount:(unint64_t)a3 totalInteractionCount:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = _PSPhotosShareInformation;
  result = [(_PSPhotosShareInformation *)&v7 init];
  if (result)
  {
    result->_interactionCount = a3;
    result->_totalInteractionCount = a4;
  }

  return result;
}

@end