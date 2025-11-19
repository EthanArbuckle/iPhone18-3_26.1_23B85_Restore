uint64_t type metadata accessor for MessagesUIPlugin()
{
  result = qword_80E0;
  if (!qword_80E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_13B4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1420();
}

uint64_t sub_13E8()
{
  v0 = sub_1430();

  return _swift_deallocClassInstance(v0, 16, 7);
}