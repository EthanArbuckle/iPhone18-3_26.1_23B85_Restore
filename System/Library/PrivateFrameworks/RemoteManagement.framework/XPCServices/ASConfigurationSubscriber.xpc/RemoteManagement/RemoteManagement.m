int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_self();
  sub_100000E94(&qword_100008008, &qword_100000F70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100000F60;
  *(v4 + 32) = sub_100000EDC();
  sub_100000E94(&qword_100008010, &qword_100000F78);
  isa = sub_100000EEC().super.isa;

  [v3 runConfigurationSubscriberClientWithApplicators:isa publisherClass:0];

  return 0;
}

uint64_t sub_100000E94(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}