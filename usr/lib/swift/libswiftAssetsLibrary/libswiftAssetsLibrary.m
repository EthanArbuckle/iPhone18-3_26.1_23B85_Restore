void ALAssetsLibrary.enumerateGroupsWithTypes(_:usingBlock:failureBlock:)(unsigned int a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a4;
  if (a2)
  {
    v15 = a2;
    v16 = a3;
    v11 = MEMORY[0x29EDCA5F8];
    v12 = 1107296256;
    v13 = sub_299A41B28;
    v14 = &block_descriptor_3;
    v9 = _Block_copy(&v11);

    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a4)
  {
LABEL_3:
    v15 = v7;
    v16 = a5;
    v11 = MEMORY[0x29EDCA5F8];
    v12 = 1107296256;
    v13 = sub_299A41BA0;
    v14 = &block_descriptor;
    v7 = _Block_copy(&v11);
  }

LABEL_4:
  if (a1 == -1)
  {
    v10 = 63;
  }

  else
  {
    v10 = a1;
  }

  [v5 enumerateGroupsWithTypes:v10 usingBlock:v9 failureBlock:v7];
  _Block_release(v7);
  _Block_release(v9);
}

void sub_299A41B28(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

void sub_299A41BA0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}