void PFCRectForTimePosition(uint64_t a1)
{
  v1 = (MEMORY[0x1E695F058] + 8);
  v2 = (MEMORY[0x1E695F058] + 16);
  v3 = (MEMORY[0x1E695F058] + 24);
  v4 = (&unk_1DF9BB620 + 8 * a1 - 8);
  if ((a1 - 1) > 7)
  {
    v4 = MEMORY[0x1E695F058];
  }

  else
  {
    v3 = (&unk_1DF9BB560 + 8 * a1 - 8);
    v2 = (&unk_1DF9BB5A0 + 8 * a1 - 8);
    v1 = (&unk_1DF9BB5E0 + 8 * a1 - 8);
  }

  v5 = *v4;
  v6 = *v1;
  v7 = *v2;
  v8 = *v3;
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeScale(&v10, 0.00308641975, 0.00253807107);
  v9 = v10;
  v11.origin.x = v5;
  v11.origin.y = v6;
  v11.size.width = v7;
  v11.size.height = v8;
  CGRectApplyAffineTransform(v11, &v9);
}

id pfc_shuffle_log()
{
  if (pfc_shuffle_log_onceToken != -1)
  {
    pfc_shuffle_log_cold_1();
  }

  v1 = pfc_shuffle_log___logger;

  return v1;
}

uint64_t __pfc_shuffle_log_block_invoke()
{
  pfc_shuffle_log___logger = os_log_create("com.apple.photosface", "shuffle");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF9BA884()
{
  v1 = *v0;
  sub_1DF9BACD0();
  MEMORY[0x1E12E3AC0](v1);
  return sub_1DF9BACF0();
}

uint64_t sub_1DF9BA8F8()
{
  v1 = *v0;
  sub_1DF9BACD0();
  MEMORY[0x1E12E3AC0](v1);
  return sub_1DF9BACF0();
}

uint64_t PFCTimePosition.description.getter(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 1701736302;
      }

      if (a1 == 1)
      {
        return 29811;
      }

LABEL_20:
      result = sub_1DF9BACC0();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 25203;
    }

    else
    {
      return 29805;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 8:
          return 6452088;
        case 7:
          return 7631736;
        case 6:
          return 29292;
      }

      goto LABEL_20;
    }

    if (a1 == 4)
    {
      return 25197;
    }

    else
    {
      return 27756;
    }
  }
}

unint64_t sub_1DF9BAA64()
{
  result = qword_1EE30A3A8;
  if (!qword_1EE30A3A8)
  {
    type metadata accessor for PFCTimePosition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30A3A8);
  }

  return result;
}

void type metadata accessor for PFCTimePosition()
{
  if (!qword_1EE30A3A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE30A3A0);
    }
  }
}

void *sub_1DF9BAB28@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}