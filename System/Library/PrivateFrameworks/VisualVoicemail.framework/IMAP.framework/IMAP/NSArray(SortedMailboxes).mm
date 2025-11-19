@interface NSArray(SortedMailboxes)
- (uint64_t)mf_indexOfMailboxDictionaryWithName:()SortedMailboxes;
@end

@implementation NSArray(SortedMailboxes)

- (uint64_t)mf_indexOfMailboxDictionaryWithName:()SortedMailboxes
{
  v4 = a3;
  v5 = [a1 count];
  v13.location = 0;
  v13.length = v5;
  v6 = CFArrayBSearchValues(a1, v13, v4, _compareNameWithMailboxDictionary, v4);
  v7 = v6;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if ((v6 & 0x8000000000000000) == 0 && v6 < v5)
  {
    v9 = [a1 objectAtIndex:v6];
    v10 = [v9 objectForKey:@"MailboxName"];
    v11 = [v10 isEqual:v4];

    if (v11)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v8;
}

@end