id sub_270A31A98(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setContactType:0];
  v5 = [v3 givenName];
  [v4 setGivenName:v5];

  v6 = [v3 familyName];
  [v4 setFamilyName:v6];

  v7 = [v3 photo];

  if (v7)
  {
    v8 = UIImagePNGRepresentation(v7);
    [v4 setImageData:v8];
  }

  v9 = [v4 copy];

  return v9;
}

uint64_t sub_270A31B80(void *a1)
{
  v2 = [a1 _photo];
  if (v2)
  {
LABEL_2:

    goto LABEL_3;
  }

  v4 = [a1 photoURL];

  if (v4)
  {
    v5 = MEMORY[0x277CBEA90];
    v6 = [a1 photoURL];
    v2 = [v5 dataWithContentsOfURL:v6];

    if (v2)
    {
      v7 = [MEMORY[0x277D755B8] imageWithData:v2];
      [a1 set_photo:v7];
    }

    goto LABEL_2;
  }

LABEL_3:

  return [a1 _photo];
}

void sub_270A31C50()
{
  v0 = _os_crash();
  __break(1u);
  UIImagePNGRepresentation(v0);
}