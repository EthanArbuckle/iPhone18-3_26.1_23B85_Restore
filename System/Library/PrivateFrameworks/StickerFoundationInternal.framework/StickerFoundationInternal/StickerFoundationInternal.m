void sub_1D460EAF0()
{
  v0 = sub_1D460ECC8();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_1EE08A668 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static String.stk_localized(_:tableName:value:comment:)()
{
  if (qword_1EE08A660 != -1)
  {
    swift_once();
  }

  return sub_1D460ECB8();
}

uint64_t String.stk_localized.getter()
{
  if (qword_1EE08A660 != -1)
  {
    swift_once();
  }

  return sub_1D460ECB8();
}