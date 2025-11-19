uint64_t sub_1390()
{
  sub_150C();
  sub_14FC();
  v0 = sub_14EC();

  return v0;
}

unint64_t sub_1454()
{
  result = qword_8128;
  if (!qword_8128)
  {
    sub_151C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8128);
  }

  return result;
}

uint64_t sub_14AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1440();
  *a1 = result;
  return result;
}