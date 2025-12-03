@interface TSCEMutableUIDSet
- (BOOL)removeUuidsFromSet:(id)set;
- (id)addUuidsFromSetReturningAdded:(id)added;
- (id)removeUuidsFromSetReturningRemoved:(id)removed;
- (void)addUuidsFromSet:(id)set;
- (void)remapWithMap:(const void *)map;
@end

@implementation TSCEMutableUIDSet

- (void)addUuidsFromSet:(id)set
{
  setCopy = set;
  v8 = setCopy;
  if (setCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2211F23B0;
    v9[3] = &unk_27845D900;
    v9[4] = self;
    objc_msgSend_foreachUuid_(setCopy, v5, v9, v6, v7);
  }
}

- (id)addUuidsFromSetReturningAdded:(id)added
{
  addedCopy = added;
  v8 = addedCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2211F16EC;
  v17 = sub_2211F16FC;
  v18 = 0;
  if (addedCopy)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2211F24EC;
    v12[3] = &unk_2784613D0;
    v12[4] = self;
    v12[5] = &v13;
    objc_msgSend_foreachUuid_(addedCopy, v5, v12, v6, v7);
    v9 = v14[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (BOOL)removeUuidsFromSet:(id)set
{
  setCopy = set;
  v8 = setCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (setCopy)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2211F2678;
    v11[3] = &unk_2784613F8;
    v11[4] = self;
    v11[5] = &v12;
    objc_msgSend_foreachUuid_(setCopy, v5, v11, v6, v7);
    v9 = *(v13 + 24);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v9 & 1;
}

- (id)removeUuidsFromSetReturningRemoved:(id)removed
{
  removedCopy = removed;
  v8 = removedCopy;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_2211F16EC;
  v17 = sub_2211F16FC;
  v18 = 0;
  if (removedCopy)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2211F27F4;
    v12[3] = &unk_2784613D0;
    v12[4] = self;
    v12[5] = &v13;
    objc_msgSend_foreachUuid_(removedCopy, v5, v12, v6, v7);
    v9 = v14[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (void)remapWithMap:(const void *)map
{
  for (i = *(map + 2); i; i = *i)
  {
    v5 = sub_2210875C4(&self->super._uuidSet.__table_.__bucket_list_.__ptr_, i + 2);
    if (v5)
    {
      sub_2210CDD3C(&self->super._uuidSet.__table_.__bucket_list_.__ptr_, v5);
      sub_2210C2B00(&self->super._uuidSet.__table_.__bucket_list_.__ptr_, i + 4);
    }
  }
}

@end