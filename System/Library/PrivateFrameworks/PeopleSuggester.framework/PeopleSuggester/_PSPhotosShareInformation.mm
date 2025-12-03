@interface _PSPhotosShareInformation
- (_PSPhotosShareInformation)initWithInteractionCount:(unint64_t)count totalInteractionCount:(unint64_t)interactionCount;
@end

@implementation _PSPhotosShareInformation

- (_PSPhotosShareInformation)initWithInteractionCount:(unint64_t)count totalInteractionCount:(unint64_t)interactionCount
{
  v7.receiver = self;
  v7.super_class = _PSPhotosShareInformation;
  result = [(_PSPhotosShareInformation *)&v7 init];
  if (result)
  {
    result->_interactionCount = count;
    result->_totalInteractionCount = interactionCount;
  }

  return result;
}

@end