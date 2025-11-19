int64_t sub_100000AE8(id a1, DEAttachmentItem *a2, DEAttachmentItem *a3)
{
  v4 = a2;
  v5 = [(DEAttachmentItem *)a3 modificationDate];
  v6 = [(DEAttachmentItem *)v4 modificationDate];

  v7 = [v5 compare:v6];
  return v7;
}