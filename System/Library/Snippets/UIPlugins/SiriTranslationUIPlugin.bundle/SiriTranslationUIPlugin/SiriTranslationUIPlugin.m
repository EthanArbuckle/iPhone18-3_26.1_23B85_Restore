uint64_t sub_12E8()
{
  sub_146C();
  sub_145C();
  v0 = sub_144C();

  return v0;
}

unint64_t sub_1390()
{
  result = qword_8090;
  if (!qword_8090)
  {
    sub_147C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8090);
  }

  return result;
}

uint64_t sub_13E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_137C();
  *a1 = result;
  return result;
}