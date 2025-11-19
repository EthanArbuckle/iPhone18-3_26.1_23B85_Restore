void sub_100001990(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 hasDirectoryPath] && (objc_msgSend(*(a1 + 32), "repositoryIsEmpty:fileManager:", v5, *(a1 + 40)) & 1) == 0)
  {
    v3 = *(a1 + 48);
    v4 = [DEAttachmentItem attachmentWithPathURL:v5];
    [v3 addObject:v4];
  }
}