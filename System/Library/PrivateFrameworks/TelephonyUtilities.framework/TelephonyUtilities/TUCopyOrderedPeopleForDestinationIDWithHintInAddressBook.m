@interface TUCopyOrderedPeopleForDestinationIDWithHintInAddressBook
@end

@implementation TUCopyOrderedPeopleForDestinationIDWithHintInAddressBook

__CFArray *__TUCopyOrderedPeopleForDestinationIDWithHintInAddressBook_block_invoke(uint64_t a1)
{
  result = _queue_TUCreateOrderedPeopleFromUIDs(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 72), *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

@end