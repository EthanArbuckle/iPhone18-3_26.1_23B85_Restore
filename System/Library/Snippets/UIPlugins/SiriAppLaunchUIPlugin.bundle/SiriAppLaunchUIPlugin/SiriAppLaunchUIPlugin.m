unint64_t sub_14D0()
{
  result = qword_8128;
  if (!qword_8128)
  {
    sub_1568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8128);
  }

  return result;
}

uint64_t sub_1528@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1470();
  *a1 = result;
  return result;
}