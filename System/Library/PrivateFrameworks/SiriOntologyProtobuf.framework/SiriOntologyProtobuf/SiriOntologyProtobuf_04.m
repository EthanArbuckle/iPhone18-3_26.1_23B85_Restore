uint64_t Google_Protobuf_FileOptions.javaStringCheckUtf8.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 50) & 1;
}

uint64_t sub_2685EA9F8(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 50) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaStringCheckUtf8.setter(char a1)
{
  v3 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(v1 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 50) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.javaStringCheckUtf8.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 50) & 1;
  return sub_2685EAB98;
}

void sub_2685EAB98(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 50) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasJavaStringCheckUtf8.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 50) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaStringCheckUtf8()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  *(v3 + 50) = 2;
}

uint64_t Google_Protobuf_FileOptions.optimizeFor.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  result = swift_beginAccess();
  v5 = *(v3 + 51);
  if (v5 == 3)
  {
    LOBYTE(v5) = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_2685EAD6C(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 51) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.optimizeFor.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(v1 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 51) = v2;
  return result;
}

void (*Google_Protobuf_FileOptions.optimizeFor.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  v6 = *(v5 + 51);
  if (v6 == 3)
  {
    LOBYTE(v6) = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685EAF0C;
}

void sub_2685EAF0C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 51) = v2;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasOptimizeFor.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 51) != 3;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearOptimizeFor()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  *(v3 + 51) = 3;
}

uint64_t Google_Protobuf_FileOptions.goPackage.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 64))
  {
    v2 = *(v1 + 56);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685EB0F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 64))
  {
    v4 = *(v3 + 56);
    v5 = *(v3 + 64);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685EB15C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(a2 + 24) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 64);
  *(v7 + 56) = v4;
  *(v7 + 64) = v3;
}

uint64_t Google_Protobuf_FileOptions.goPackage.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v8 = sub_268601EB8(v8);
    *(v3 + 24) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 64);
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
}

void (*Google_Protobuf_FileOptions.goPackage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 64))
  {
    v6 = *(v5 + 56);
    v7 = *(v5 + 64);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685EB338;
}

void sub_2685EB338(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(*a1 + 80);

    v7 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v9 = sub_268601EB8(v9);
      *(v10 + 24) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 64);
    *(v9 + 56) = v3;
    *(v9 + 64) = v5;

    v12 = v2[10];
  }

  else
  {
    v13 = *(v4 + 24);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 24);
    if ((v14 & 1) == 0)
    {
      v16 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v15 = sub_268601EB8(v15);
      *(v16 + 24) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 64);
    *(v15 + 56) = v3;
    *(v15 + 64) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasGoPackage.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 64) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearGoPackage()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 64);
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
}

uint64_t Google_Protobuf_FileOptions.ccGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 72) & 1;
}

uint64_t sub_2685EB570(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 72) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.ccGenericServices.setter(char a1)
{
  v3 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(v1 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 72) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.ccGenericServices.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 72) & 1;
  return sub_2685EB710;
}

void sub_2685EB710(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 72) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasCcGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 72) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearCcGenericServices()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  *(v3 + 72) = 2;
}

uint64_t Google_Protobuf_FileOptions.javaGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 73) & 1;
}

uint64_t sub_2685EB8D8(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 73) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaGenericServices.setter(char a1)
{
  v3 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(v1 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 73) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.javaGenericServices.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 73) & 1;
  return sub_2685EBA78;
}

void sub_2685EBA78(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 73) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasJavaGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 73) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaGenericServices()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  *(v3 + 73) = 2;
}

uint64_t Google_Protobuf_FileOptions.pyGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 74) & 1;
}

uint64_t sub_2685EBC40(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 74) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.pyGenericServices.setter(char a1)
{
  v3 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(v1 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 74) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.pyGenericServices.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 74) & 1;
  return sub_2685EBDE0;
}

void sub_2685EBDE0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 74) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasPyGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 74) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearPyGenericServices()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  *(v3 + 74) = 2;
}

uint64_t Google_Protobuf_FileOptions.phpGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 75) & 1;
}

uint64_t sub_2685EBFA8(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 75) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.phpGenericServices.setter(char a1)
{
  v3 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(v1 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 75) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.phpGenericServices.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 75) & 1;
  return sub_2685EC148;
}

void sub_2685EC148(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 75) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasPhpGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 75) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearPhpGenericServices()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  *(v3 + 75) = 2;
}

uint64_t Google_Protobuf_FileOptions.deprecated.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 76) & 1;
}

uint64_t sub_2685EC310(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 76) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.deprecated.setter(char a1)
{
  v3 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(v1 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 76) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.deprecated.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 76) & 1;
  return sub_2685EC4B0;
}

void sub_2685EC4B0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 76) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasDeprecated.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 76) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearDeprecated()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  *(v3 + 76) = 2;
}

uint64_t Google_Protobuf_FileOptions.ccEnableArenas.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 77) & 1;
}

uint64_t sub_2685EC678(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  result = swift_beginAccess();
  *(v6 + 77) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.ccEnableArenas.setter(char a1)
{
  v3 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(v1 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 77) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.ccEnableArenas.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 77) & 1;
  return sub_2685EC818;
}

void sub_2685EC818(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v1[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 77) = v3;

  free(v1);
}

BOOL Google_Protobuf_FileOptions.hasCcEnableArenas.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 77) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearCcEnableArenas()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  *(v3 + 77) = 2;
}

uint64_t Google_Protobuf_FileOptions.objcClassPrefix.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 88))
  {
    v2 = *(v1 + 80);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685ECA00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 88))
  {
    v4 = *(v3 + 80);
    v5 = *(v3 + 88);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685ECA64(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(a2 + 24) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 88);
  *(v7 + 80) = v4;
  *(v7 + 88) = v3;
}

uint64_t Google_Protobuf_FileOptions.objcClassPrefix.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v8 = sub_268601EB8(v8);
    *(v3 + 24) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 88);
  *(v8 + 80) = a1;
  *(v8 + 88) = a2;
}

void (*Google_Protobuf_FileOptions.objcClassPrefix.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 88))
  {
    v6 = *(v5 + 80);
    v7 = *(v5 + 88);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685ECC40;
}

void sub_2685ECC40(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(*a1 + 80);

    v7 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v9 = sub_268601EB8(v9);
      *(v10 + 24) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 88);
    *(v9 + 80) = v3;
    *(v9 + 88) = v5;

    v12 = v2[10];
  }

  else
  {
    v13 = *(v4 + 24);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 24);
    if ((v14 & 1) == 0)
    {
      v16 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v15 = sub_268601EB8(v15);
      *(v16 + 24) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 88);
    *(v15 + 80) = v3;
    *(v15 + 88) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasObjcClassPrefix.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 88) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearObjcClassPrefix()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 88);
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
}

uint64_t Google_Protobuf_FileOptions.csharpNamespace.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 104))
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685ECE98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 104))
  {
    v4 = *(v3 + 96);
    v5 = *(v3 + 104);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685ECEFC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(a2 + 24) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 104);
  *(v7 + 96) = v4;
  *(v7 + 104) = v3;
}

uint64_t Google_Protobuf_FileOptions.csharpNamespace.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v8 = sub_268601EB8(v8);
    *(v3 + 24) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 104);
  *(v8 + 96) = a1;
  *(v8 + 104) = a2;
}

void (*Google_Protobuf_FileOptions.csharpNamespace.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 104))
  {
    v6 = *(v5 + 96);
    v7 = *(v5 + 104);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685ED0D8;
}

void sub_2685ED0D8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(*a1 + 80);

    v7 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v9 = sub_268601EB8(v9);
      *(v10 + 24) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 104);
    *(v9 + 96) = v3;
    *(v9 + 104) = v5;

    v12 = v2[10];
  }

  else
  {
    v13 = *(v4 + 24);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 24);
    if ((v14 & 1) == 0)
    {
      v16 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v15 = sub_268601EB8(v15);
      *(v16 + 24) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 104);
    *(v15 + 96) = v3;
    *(v15 + 104) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasCsharpNamespace.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 104) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearCsharpNamespace()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
}

uint64_t Google_Protobuf_FileOptions.swiftPrefix.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 120))
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685ED330@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 120))
  {
    v4 = *(v3 + 112);
    v5 = *(v3 + 120);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685ED394(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(a2 + 24) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 120);
  *(v7 + 112) = v4;
  *(v7 + 120) = v3;
}

uint64_t Google_Protobuf_FileOptions.swiftPrefix.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v8 = sub_268601EB8(v8);
    *(v3 + 24) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 120);
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
}

void (*Google_Protobuf_FileOptions.swiftPrefix.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 120))
  {
    v6 = *(v5 + 112);
    v7 = *(v5 + 120);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685ED570;
}

void sub_2685ED570(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(*a1 + 80);

    v7 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v9 = sub_268601EB8(v9);
      *(v10 + 24) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 120);
    *(v9 + 112) = v3;
    *(v9 + 120) = v5;

    v12 = v2[10];
  }

  else
  {
    v13 = *(v4 + 24);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 24);
    if ((v14 & 1) == 0)
    {
      v16 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v15 = sub_268601EB8(v15);
      *(v16 + 24) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 120);
    *(v15 + 112) = v3;
    *(v15 + 120) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasSwiftPrefix.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 120) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearSwiftPrefix()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 120);
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
}

uint64_t Google_Protobuf_FileOptions.phpClassPrefix.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 136))
  {
    v2 = *(v1 + 128);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685ED7C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 136))
  {
    v4 = *(v3 + 128);
    v5 = *(v3 + 136);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685ED82C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(a2 + 24) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 136);
  *(v7 + 128) = v4;
  *(v7 + 136) = v3;
}

uint64_t Google_Protobuf_FileOptions.phpClassPrefix.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v8 = sub_268601EB8(v8);
    *(v3 + 24) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 136);
  *(v8 + 128) = a1;
  *(v8 + 136) = a2;
}

void (*Google_Protobuf_FileOptions.phpClassPrefix.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 136))
  {
    v6 = *(v5 + 128);
    v7 = *(v5 + 136);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685EDA08;
}

void sub_2685EDA08(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(*a1 + 80);

    v7 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v9 = sub_268601EB8(v9);
      *(v10 + 24) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 136);
    *(v9 + 128) = v3;
    *(v9 + 136) = v5;

    v12 = v2[10];
  }

  else
  {
    v13 = *(v4 + 24);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 24);
    if ((v14 & 1) == 0)
    {
      v16 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v15 = sub_268601EB8(v15);
      *(v16 + 24) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 136);
    *(v15 + 128) = v3;
    *(v15 + 136) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasPhpClassPrefix.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 136) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearPhpClassPrefix()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 136);
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
}

uint64_t Google_Protobuf_FileOptions.phpNamespace.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 152))
  {
    v2 = *(v1 + 144);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685EDC60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 152))
  {
    v4 = *(v3 + 144);
    v5 = *(v3 + 152);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685EDCC4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(a2 + 24) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 152);
  *(v7 + 144) = v4;
  *(v7 + 152) = v3;
}

uint64_t Google_Protobuf_FileOptions.phpNamespace.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v8 = sub_268601EB8(v8);
    *(v3 + 24) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 152);
  *(v8 + 144) = a1;
  *(v8 + 152) = a2;
}

void (*Google_Protobuf_FileOptions.phpNamespace.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 152))
  {
    v6 = *(v5 + 144);
    v7 = *(v5 + 152);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685EDEA0;
}

void sub_2685EDEA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(*a1 + 80);

    v7 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v9 = sub_268601EB8(v9);
      *(v10 + 24) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 152);
    *(v9 + 144) = v3;
    *(v9 + 152) = v5;

    v12 = v2[10];
  }

  else
  {
    v13 = *(v4 + 24);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 24);
    if ((v14 & 1) == 0)
    {
      v16 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v15 = sub_268601EB8(v15);
      *(v16 + 24) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 152);
    *(v15 + 144) = v3;
    *(v15 + 152) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasPhpNamespace.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 152) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearPhpNamespace()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 152);
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
}

uint64_t Google_Protobuf_FileOptions.phpMetadataNamespace.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 168))
  {
    v2 = *(v1 + 160);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685EE0F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 168))
  {
    v4 = *(v3 + 160);
    v5 = *(v3 + 168);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685EE15C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(a2 + 24) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 168);
  *(v7 + 160) = v4;
  *(v7 + 168) = v3;
}

uint64_t Google_Protobuf_FileOptions.phpMetadataNamespace.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v8 = sub_268601EB8(v8);
    *(v3 + 24) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 168);
  *(v8 + 160) = a1;
  *(v8 + 168) = a2;
}

void (*Google_Protobuf_FileOptions.phpMetadataNamespace.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 168))
  {
    v6 = *(v5 + 160);
    v7 = *(v5 + 168);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685EE338;
}

void sub_2685EE338(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(*a1 + 80);

    v7 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v9 = sub_268601EB8(v9);
      *(v10 + 24) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 168);
    *(v9 + 160) = v3;
    *(v9 + 168) = v5;

    v12 = v2[10];
  }

  else
  {
    v13 = *(v4 + 24);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 24);
    if ((v14 & 1) == 0)
    {
      v16 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v15 = sub_268601EB8(v15);
      *(v16 + 24) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 168);
    *(v15 + 160) = v3;
    *(v15 + 168) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasPhpMetadataNamespace.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 168) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearPhpMetadataNamespace()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 168);
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
}

uint64_t Google_Protobuf_FileOptions.rubyPackage.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 184))
  {
    v2 = *(v1 + 176);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685EE590@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 184))
  {
    v4 = *(v3 + 176);
    v5 = *(v3 + 184);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685EE5F4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(a2 + 24) = v7;
  }

  swift_beginAccess();
  v8 = *(v7 + 184);
  *(v7 + 176) = v4;
  *(v7 + 184) = v3;
}

uint64_t Google_Protobuf_FileOptions.rubyPackage.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v8 = sub_268601EB8(v8);
    *(v3 + 24) = v8;
  }

  swift_beginAccess();
  v9 = *(v8 + 184);
  *(v8 + 176) = a1;
  *(v8 + 184) = a2;
}

void (*Google_Protobuf_FileOptions.rubyPackage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 184))
  {
    v6 = *(v5 + 176);
    v7 = *(v5 + 184);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685EE7D0;
}

void sub_2685EE7D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(*a1 + 80);

    v7 = *(v4 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v9 = sub_268601EB8(v9);
      *(v10 + 24) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 184);
    *(v9 + 176) = v3;
    *(v9 + 184) = v5;

    v12 = v2[10];
  }

  else
  {
    v13 = *(v4 + 24);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 24);
    if ((v14 & 1) == 0)
    {
      v16 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v15 = sub_268601EB8(v15);
      *(v16 + 24) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 184);
    *(v15 + 176) = v3;
    *(v15 + 184) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasRubyPackage.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 184) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearRubyPackage()()
{
  v1 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v3 = sub_268601EB8(v3);
    *(v0 + 24) = v3;
  }

  swift_beginAccess();
  v4 = *(v3 + 184);
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
}

uint64_t Google_Protobuf_FileOptions.uninterpretedOption.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  v2 = *(v1 + 192);
}

uint64_t sub_2685EEA08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  v4 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  swift_beginAccess();
  v7 = *(v6 + 192);
  *(v6 + 192) = v3;
}

uint64_t Google_Protobuf_FileOptions.uninterpretedOption.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v2 + 24) = v6;
  }

  swift_beginAccess();
  v7 = *(v6 + 192);
  *(v6 + 192) = a1;
}

void (*Google_Protobuf_FileOptions.uninterpretedOption.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 192);

  return sub_2685EEBC8;
}

void sub_2685EEBC8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(*a1 + 72);

    v7 = *(v5 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v5 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[10];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v9 = sub_268601EB8(v9);
      *(v10 + 24) = v9;
    }

    swift_beginAccess();
    v11 = *(v9 + 192);
    *(v9 + 192) = v3;

    v12 = *v4;
  }

  else
  {
    v13 = *(v5 + 24);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v5 + 24);
    if ((v14 & 1) == 0)
    {
      v16 = v2[10];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v15 = sub_268601EB8(v15);
      *(v16 + 24) = v15;
    }

    swift_beginAccess();
    v17 = *(v15 + 192);
    *(v15 + 192) = v3;
  }

  free(v2);
}

uint64_t Google_Protobuf_FileOptions.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_FileOptions.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

SiriOntologyProtobuf::Google_Protobuf_FileOptions::OptimizeMode_optional __swiftcall Google_Protobuf_FileOptions.OptimizeMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2685EED84()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1 + 1);
  return sub_268689EF4();
}

uint64_t sub_2685EEDCC()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1 + 1);
  return sub_268689EF4();
}

uint64_t Google_Protobuf_FileOptions._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_2685EEE74(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t (*Google_Protobuf_MessageOptions.messageSetWireFormat.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32) & 1;
  return sub_268619410;
}

uint64_t (*Google_Protobuf_MessageOptions.noStandardDescriptorAccessor.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 33) & 1;
  return sub_268619408;
}

_BYTE *(*Google_Protobuf_MessageOptions.deprecated.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 34) & 1;
  return sub_2685EEFE0;
}

uint64_t (*Google_Protobuf_MessageOptions.mapEntry.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 35) & 1;
  return sub_26861940C;
}

uint64_t Google_Protobuf_MessageOptions.uninterpretedOption.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_MessageOptions.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_MessageOptions.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t Google_Protobuf_MessageOptions._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

void Google_Protobuf_FieldOptions.ctype.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *a1 = v2;
}

_BYTE *(*Google_Protobuf_FieldOptions.ctype.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 32);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *(a1 + 8) = v2;
  return sub_2685EF1CC;
}

uint64_t (*Google_Protobuf_FieldOptions.packed.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 33) & 1;
  return sub_268619408;
}

void Google_Protobuf_FieldOptions.jstype.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 34);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *a1 = v2;
}

_BYTE *(*Google_Protobuf_FieldOptions.jstype.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 34);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *(a1 + 8) = v2;
  return sub_2685EEFE0;
}

_BYTE *(*Google_Protobuf_FieldOptions.lazy.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 35) & 1;
  return sub_2685EF30C;
}

_BYTE *(*Google_Protobuf_FieldOptions.deprecated.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 36) & 1;
  return sub_2685EF37C;
}

_BYTE *(*Google_Protobuf_FieldOptions.weak.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 37) & 1;
  return sub_2685EF3EC;
}

uint64_t Google_Protobuf_FieldOptions.uninterpretedOption.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_FieldOptions.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_FieldOptions.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

SiriOntologyProtobuf::Google_Protobuf_FieldOptions::CType_optional __swiftcall Google_Protobuf_FieldOptions.CType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t Google_Protobuf_FieldOptions._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

uint64_t Google_Protobuf_OneofOptions.uninterpretedOption.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_OneofOptions.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t _s20SiriOntologyProtobuf07Google_C12_EnumOptionsV13unknownFieldsAA14UnknownStorageVvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t Google_Protobuf_OneofOptions._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

_BYTE *(*Google_Protobuf_EnumOptions.allowAlias.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32) & 1;
  return sub_2685EF1CC;
}

_BYTE *(*Google_Protobuf_EnumOptions.deprecated.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 33) & 1;
  return sub_2685EF72C;
}

uint64_t Google_Protobuf_EnumOptions.uninterpretedOption.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_EnumOptions.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_EnumOptions._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

uint64_t (*Google_Protobuf_EnumValueOptions.deprecated.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32) & 1;
  return sub_268619410;
}

uint64_t (*Google_Protobuf_ServiceOptions.deprecated.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32) & 1;
  return sub_268619410;
}

uint64_t Google_Protobuf_ServiceOptions.uninterpretedOption.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_ServiceOptions.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_ServiceOptions._protobuf_extensionFieldValues.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 24);

  *(v1 + 24) = v2;
  return result;
}

uint64_t (*Google_Protobuf_MethodOptions.deprecated.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32) & 1;
  return sub_268619410;
}

void Google_Protobuf_MethodOptions.idempotencyLevel.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 33);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *a1 = v2;
}

_BYTE *(*Google_Protobuf_MethodOptions.idempotencyLevel.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  v2 = *(v1 + 33);
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *(a1 + 8) = v2;
  return sub_2685EF72C;
}

uint64_t Google_Protobuf_UninterpretedOption.name.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.identifierValue.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t Google_Protobuf_UninterpretedOption.identifierValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t (*Google_Protobuf_UninterpretedOption.identifierValue.modify(void *a1))()
{
  a1[2] = v1;
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  a1[3] = v3;
  *a1 = v4;
  a1[1] = v5;

  return sub_26861949C;
}

Swift::Void __swiftcall Google_Protobuf_UninterpretedOption.clearIdentifierValue()()
{
  v1 = *(v0 + 32);

  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
}

uint64_t Google_Protobuf_UninterpretedOption.positiveIntValue.getter()
{
  if (*(v0 + 48))
  {
    return 0;
  }

  else
  {
    return *(v0 + 40);
  }
}

uint64_t Google_Protobuf_UninterpretedOption.positiveIntValue.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 48) = 0;
  return result;
}

void *(*Google_Protobuf_UninterpretedOption.positiveIntValue.modify(void *a1))(void *result)
{
  v2 = *(v1 + 40);
  if (*(v1 + 48))
  {
    v2 = 0;
  }

  *a1 = v2;
  a1[1] = v1;
  return sub_2685EFCDC;
}

void *sub_2685EFCDC(void *result)
{
  v1 = result[1];
  *(v1 + 40) = *result;
  *(v1 + 48) = 0;
  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.negativeIntValue.getter()
{
  if (*(v0 + 64))
  {
    return 0;
  }

  else
  {
    return *(v0 + 56);
  }
}

uint64_t Google_Protobuf_UninterpretedOption.negativeIntValue.setter(uint64_t result)
{
  *(v1 + 56) = result;
  *(v1 + 64) = 0;
  return result;
}

void *(*Google_Protobuf_UninterpretedOption.negativeIntValue.modify(void *a1))(void *result)
{
  v2 = *(v1 + 56);
  if (*(v1 + 64))
  {
    v2 = 0;
  }

  *a1 = v2;
  a1[1] = v1;
  return sub_2685EFD60;
}

void *sub_2685EFD60(void *result)
{
  v1 = result[1];
  *(v1 + 56) = *result;
  *(v1 + 64) = 0;
  return result;
}

double Google_Protobuf_UninterpretedOption.doubleValue.getter()
{
  result = *(v0 + 72);
  if (*(v0 + 80))
  {
    return 0.0;
  }

  return result;
}

void *(*Google_Protobuf_UninterpretedOption.doubleValue.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  v2 = *(v1 + 72);
  if (*(v1 + 80))
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_2685EFDF0;
}

void *sub_2685EFDF0(void *result)
{
  v1 = result[1];
  *(v1 + 72) = *result;
  *(v1 + 80) = 0;
  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.stringValue.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 88);
  }

  if (v2 >> 60 != 15)
  {
    v4 = *(v0 + 96);
  }

  sub_268614834(v1, v2);
  return v3;
}

uint64_t Google_Protobuf_UninterpretedOption.stringValue.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2685B98FC(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t (*Google_Protobuf_UninterpretedOption.stringValue.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v1 + 88);
  }

  v6 = 0xC000000000000000;
  if (v4 >> 60 != 15)
  {
    v6 = *(v1 + 96);
  }

  *a1 = v5;
  a1[1] = v6;
  sub_268614834(v3, v4);
  return sub_2685EFEF8;
}

uint64_t sub_2685EFEF8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  if (a2)
  {
    sub_2685BA80C(*a1, v2);
    sub_2685B98FC(v5, v6);
    *(v3 + 88) = v4;
    *(v3 + 96) = v2;

    return sub_2685B593C(v4, v2);
  }

  else
  {
    result = sub_2685B98FC(*(v3 + 88), *(v3 + 96));
    *(v3 + 88) = v4;
    *(v3 + 96) = v2;
  }

  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.aggregateValue.getter()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 112);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t Google_Protobuf_UninterpretedOption.aggregateValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t (*Google_Protobuf_UninterpretedOption.aggregateValue.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 112);
  if (v3)
  {
    v4 = *(v1 + 104);
    v5 = *(v1 + 112);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  a1[3] = v3;
  *a1 = v4;
  a1[1] = v5;

  return sub_2685F00B0;
}

uint64_t sub_2685F00B0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 104) = v3;
    *(v5 + 112) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 104) = v3;
    *(v5 + 112) = v2;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_UninterpretedOption.clearAggregateValue()()
{
  v1 = *(v0 + 112);

  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
}

uint64_t Google_Protobuf_UninterpretedOption.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_UninterpretedOption.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.namePart.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.namePart.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t (*Google_Protobuf_UninterpretedOption.NamePart.namePart.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  a1[3] = v3;
  *a1 = v4;
  a1[1] = v5;

  return sub_2685F029C;
}

uint64_t sub_2685F029C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_UninterpretedOption.NamePart.clearNamePart()()
{
  v1 = *(v0 + 24);

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
}

uint64_t (*Google_Protobuf_UninterpretedOption.NamePart.isExtension.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32) & 1;
  return sub_268619410;
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_UninterpretedOption.NamePart.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

double Google_Protobuf_UninterpretedOption.NamePart.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
  return result;
}

double Google_Protobuf_UninterpretedOption.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  result = 0.0;
  *(a1 + 88) = xmmword_26868BD70;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.location.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.path.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.span.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.leadingComments.getter()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.leadingComments.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t (*Google_Protobuf_SourceCodeInfo.Location.leadingComments.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 48);
  if (v3)
  {
    v4 = *(v1 + 40);
    v5 = *(v1 + 48);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  a1[3] = v3;
  *a1 = v4;
  a1[1] = v5;

  return sub_2685F064C;
}

uint64_t sub_2685F064C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 40) = v3;
    *(v5 + 48) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 40) = v3;
    *(v5 + 48) = v2;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_SourceCodeInfo.Location.clearLeadingComments()()
{
  v1 = *(v0 + 48);

  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.trailingComments.getter()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.trailingComments.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t (*Google_Protobuf_SourceCodeInfo.Location.trailingComments.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = *(v1 + 56);
    v5 = *(v1 + 64);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  a1[3] = v3;
  *a1 = v4;
  a1[1] = v5;

  return sub_2685F07D8;
}

uint64_t sub_2685F07D8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 56) = v3;
    *(v5 + 64) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 56) = v3;
    *(v5 + 64) = v2;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_SourceCodeInfo.Location.clearTrailingComments()()
{
  v1 = *(v0 + 64);

  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.leadingDetachedComments.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_SourceCodeInfo.Location.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

double Google_Protobuf_SourceCodeInfo.Location.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = xmmword_26868A5E0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.path.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.sourceFile.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.sourceFile.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t (*Google_Protobuf_GeneratedCodeInfo.Annotation.sourceFile.modify(void *a1))()
{
  a1[2] = v1;
  v3 = *(v1 + 32);
  if (v3)
  {
    v4 = *(v1 + 24);
    v5 = *(v1 + 32);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  a1[3] = v3;
  *a1 = v4;
  a1[1] = v5;

  return sub_2685F0AD8;
}

uint64_t sub_2685F0ADC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v6 = a1[1];

    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
  }

  else
  {
    v8 = a1[3];

    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
  }

  return result;
}

Swift::Void __swiftcall Google_Protobuf_GeneratedCodeInfo.Annotation.clearSourceFile()()
{
  v1 = *(v0 + 32);

  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.begin.getter()
{
  if (*(v0 + 44))
  {
    return 0;
  }

  else
  {
    return *(v0 + 40);
  }
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.begin.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = 0;
  return result;
}

uint64_t *(*Google_Protobuf_GeneratedCodeInfo.Annotation.begin.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 40);
  if (*(v1 + 44))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_2685F0BD8;
}

uint64_t *sub_2685F0BD8(uint64_t *result)
{
  v1 = *result;
  *(v1 + 40) = *(result + 2);
  *(v1 + 44) = 0;
  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.end.getter()
{
  if (*(v0 + 52))
  {
    return 0;
  }

  else
  {
    return *(v0 + 48);
  }
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.end.setter(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 52) = 0;
  return result;
}

uint64_t *(*Google_Protobuf_GeneratedCodeInfo.Annotation.end.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 48);
  if (*(v1 + 52))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_2685F0C64;
}

uint64_t *sub_2685F0C64(uint64_t *result)
{
  v1 = *result;
  *(v1 + 48) = *(result + 2);
  *(v1 + 52) = 0;
  return result;
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_GeneratedCodeInfo.Annotation.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

double Google_Protobuf_GeneratedCodeInfo.Annotation.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 1;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  return result;
}

uint64_t static Google_Protobuf_FileDescriptorSet._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC48 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C410;
  v2 = qword_28028C418;
  v3 = unk_28028C420;
  *a1 = qword_28028C408;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

BOOL Google_Protobuf_FileDescriptorSet.isInitialized.getter()
{
  v1 = sub_2685F10F0(*v0, &type metadata for Google_Protobuf_FileDescriptorProto, sub_268614848);
  v2 = _s20SiriOntologyProtobuf8InternalO17areAllInitializedySbSayAA7Message_pGFZ_0(v1);

  return v2;
}

uint64_t sub_2685F0E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v30 = MEMORY[0x277D84F90];
    sub_2685C4694(0, v1, 0);
    v2 = v30;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[4];
      v6 = v4[6];
      v27 = v4[5];
      v28 = v6;
      v7 = v4[1];
      v22 = *v4;
      v8 = v4[2];
      v9 = v4[3];
      v23 = v7;
      v24 = v8;
      v29 = *(v4 + 14);
      v25 = v9;
      v26 = v5;
      sub_268619040(&v22, &v19);
      v30 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2685C4694((v10 > 1), v11 + 1, 1);
        v2 = v30;
      }

      v20 = &type metadata for Google_Protobuf_UninterpretedOption;
      v21 = sub_2686148F0();
      v12 = swift_allocObject();
      v13 = v27;
      v14 = v28;
      v15 = v25;
      *(v12 + 80) = v26;
      *(v12 + 96) = v13;
      *(v12 + 112) = v14;
      v16 = v23;
      v17 = v24;
      *(v12 + 16) = v22;
      *(v12 + 32) = v16;
      *&v19 = v12;
      *(v12 + 128) = v29;
      *(v12 + 48) = v17;
      *(v12 + 64) = v15;
      *(v2 + 16) = v11 + 1;
      sub_2685B17CC(&v19, v2 + 40 * v11 + 32);
      v4 = (v4 + 120);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2685F0FB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    sub_2685C4694(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 1);
      v13 = *(v4 - 2);
      v8 = *v4;
      sub_2685BA80C(v5, v6);
      v17 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_2685C4694((v10 > 1), v9 + 1, 1);
        v2 = v17;
      }

      v4 += 40;
      v15 = &type metadata for Google_Protobuf_UninterpretedOption.NamePart;
      v16 = sub_268614C8C();
      v11 = swift_allocObject();
      *&v14 = v11;
      *(v11 + 16) = v5;
      *(v11 + 24) = v6;
      *(v11 + 32) = v13;
      *(v11 + 40) = v7;
      *(v11 + 48) = v8;
      *(v2 + 16) = v9 + 1;
      sub_2685B17CC(&v14, v2 + 40 * v9 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2685F10F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2685C4694(0, v3, 0);
    v4 = v20;
    v7 = (a1 + 48);
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      sub_2685BA80C(v8, v9);
      v20 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_2685C4694((v11 > 1), v12 + 1, 1);
        v4 = v20;
      }

      v18 = a2;
      v13 = a3();
      *&v16 = v8;
      *(&v16 + 1) = v9;
      v19 = v13;
      v17 = v10;
      *(v4 + 16) = v12 + 1;
      sub_2685B17CC(&v16, v4 + 40 * v12 + 32);
      v7 += 3;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t static Google_Protobuf_FileDescriptorSet.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_26860E120(*a1, *a2, sub_2685F35C0) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v4, v5);
  v6 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v6 & 1;
}

uint64_t sub_2685F1358()
{
  v1 = sub_2685F10F0(*v0, &type metadata for Google_Protobuf_FileDescriptorProto, sub_268614848);
  result = v1 + 32;
  v3 = -*(v1 + 16);
  v4 = -1;
  while (1)
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
LABEL_5:

      return v5 == -1;
    }

    if (++v4 >= *(v1 + 16))
    {
      break;
    }

    v6 = result + 40;
    sub_2685B1724(result, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = (*(v8 + 32))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = v6;
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2685F14A0@<X0>(void *a1@<X8>)
{
  if (qword_28028BC48 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C410;
  v2 = qword_28028C418;
  v3 = unk_28028C420;
  *a1 = qword_28028C408;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685F1584(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_26860E120(*a1, *a2, sub_2685F35C0) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v4, v5);
  v6 = sub_2686131DC(v2, v3, v4, v5);
  sub_2685B593C(v4, v5);
  sub_2685B593C(v2, v3);
  return v6 & 1;
}

uint64_t static Google_Protobuf_FileDescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC50 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C430;
  v2 = qword_28028C438;
  v3 = unk_28028C440;
  *a1 = qword_28028C428;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

double sub_2685F1704()
{
  type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 48) = MEMORY[0x277D84F90];
  *(v0 + 56) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = v2;
  *(v0 + 80) = v2;
  *(v0 + 88) = v2;
  *(v0 + 96) = v2;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  qword_28028C448 = v0;
  return result;
}

uint64_t sub_2685F1768(void *a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 48) = MEMORY[0x277D84F90];
  *(v1 + 56) = v3;
  *(v1 + 64) = v3;
  *(v1 + 72) = v3;
  *(v1 + 80) = v3;
  *(v1 + 88) = v3;
  *(v1 + 96) = v3;
  *(v1 + 120) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0;
  *(v1 + 136) = 0u;
  *(v1 + 104) = 0u;
  swift_beginAccess();
  v5 = a1[2];
  v4 = a1[3];
  swift_beginAccess();
  *(v1 + 16) = v5;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v7 = a1[4];
  v6 = a1[5];
  swift_beginAccess();
  *(v1 + 32) = v7;
  *(v1 + 40) = v6;
  swift_beginAccess();
  v8 = a1[6];
  swift_beginAccess();
  v9 = *(v1 + 48);
  *(v1 + 48) = v8;

  swift_beginAccess();
  v10 = a1[7];
  swift_beginAccess();
  v11 = *(v1 + 56);
  *(v1 + 56) = v10;

  swift_beginAccess();
  v12 = a1[8];
  swift_beginAccess();
  v13 = *(v1 + 64);
  *(v1 + 64) = v12;

  swift_beginAccess();
  v14 = a1[9];
  swift_beginAccess();
  v15 = *(v1 + 72);
  *(v1 + 72) = v14;

  swift_beginAccess();
  v16 = a1[10];
  swift_beginAccess();
  v17 = *(v1 + 80);
  *(v1 + 80) = v16;

  swift_beginAccess();
  v18 = a1[11];
  swift_beginAccess();
  v19 = *(v1 + 88);
  *(v1 + 88) = v18;

  swift_beginAccess();
  v20 = a1[12];
  swift_beginAccess();
  v21 = *(v1 + 96);
  *(v1 + 96) = v20;

  swift_beginAccess();
  v22 = a1[13];
  v23 = a1[14];
  v24 = a1[15];
  v25 = a1[16];
  swift_beginAccess();
  v26 = *(v1 + 104);
  v27 = *(v1 + 112);
  v28 = *(v1 + 120);
  v29 = *(v1 + 128);
  *(v1 + 104) = v22;
  *(v1 + 112) = v23;
  *(v1 + 120) = v24;
  *(v1 + 128) = v25;
  sub_268601AE8(v22, v23, v24);
  sub_268601B34(v26, v27, v28);
  swift_beginAccess();
  v30 = a1[17];
  v31 = a1[18];
  v32 = a1[19];
  swift_beginAccess();
  v33 = *(v1 + 136);
  v34 = *(v1 + 144);
  v35 = *(v1 + 152);
  *(v1 + 136) = v30;
  *(v1 + 144) = v31;
  *(v1 + 152) = v32;
  sub_268601B80(v30, v31, v32);
  sub_268601BC8(v33, v34, v35);
  swift_beginAccess();
  v37 = a1[20];
  v36 = a1[21];

  swift_beginAccess();
  v38 = *(v1 + 168);
  *(v1 + 160) = v37;
  *(v1 + 168) = v36;

  return v1;
}

void *sub_2685F1BBC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  v9 = v0[12];

  v10 = v0[16];
  sub_268601B34(v0[13], v0[14], v0[15]);
  sub_268601BC8(v0[17], v0[18], v0[19]);
  v11 = v0[21];

  return v0;
}

uint64_t sub_2685F1C3C()
{
  sub_2685F1BBC();

  return swift_deallocClassInstance();
}

uint64_t sub_2685F1C74(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 72);

  v4 = sub_2685F10F0(v3, &type metadata for Google_Protobuf_DescriptorProto, sub_268615B10);

  result = v4 + 32;
  v6 = -*(v4 + 16);
  v7 = -1;
  while (v6 + v7 != -1)
  {
    if (++v7 >= *(v4 + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = result + 40;
    sub_2685B1724(result, &v41);
    v9 = v43;
    v10 = v44;
    __swift_project_boxed_opaque_existential_1(&v41, v43);
    v11 = (*(v10 + 32))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(&v41);
    result = v8;
    if ((v11 & 1) == 0)
    {
LABEL_20:

      return 0;
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 80);

  v14 = sub_2685F10F0(v13, &type metadata for Google_Protobuf_EnumDescriptorProto, sub_2686164AC);

  result = v14 + 32;
  v15 = -*(v14 + 16);
  v16 = -1;
  while (v15 + v16 != -1)
  {
    if (++v16 >= *(v14 + 16))
    {
      goto LABEL_27;
    }

    v17 = result + 40;
    sub_2685B1724(result, &v41);
    v18 = v43;
    v19 = v44;
    __swift_project_boxed_opaque_existential_1(&v41, v43);
    v20 = (*(v19 + 32))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(&v41);
    result = v17;
    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  swift_beginAccess();
  v21 = *(a1 + 88);

  v23 = sub_2685F10F0(v22, &type metadata for Google_Protobuf_ServiceDescriptorProto, sub_2686169A4);

  result = v23 + 32;
  v24 = -*(v23 + 16);
  v25 = -1;
  while (v24 + v25 != -1)
  {
    if (++v25 >= *(v23 + 16))
    {
      goto LABEL_28;
    }

    v26 = result + 40;
    sub_2685B1724(result, &v41);
    v27 = v43;
    v28 = v44;
    __swift_project_boxed_opaque_existential_1(&v41, v43);
    v29 = (*(v28 + 32))(v27, v28);
    __swift_destroy_boxed_opaque_existential_1(&v41);
    result = v26;
    if ((v29 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 96);

  v32 = sub_2685F10F0(v31, &type metadata for Google_Protobuf_FieldDescriptorProto, sub_26861615C);

  result = v32 + 32;
  v33 = -*(v32 + 16);
  v34 = -1;
  while (v33 + v34 != -1)
  {
    if (++v34 >= *(v32 + 16))
    {
      goto LABEL_29;
    }

    v35 = result + 40;
    sub_2685B1724(result, &v41);
    v36 = v43;
    v37 = v44;
    __swift_project_boxed_opaque_existential_1(&v41, v43);
    v38 = (*(v37 + 32))(v36, v37);
    __swift_destroy_boxed_opaque_existential_1(&v41);
    result = v35;
    if ((v38 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  swift_beginAccess();
  v39 = *(a1 + 120);
  if (v39)
  {
    v40 = *(a1 + 128);
    v41 = *(a1 + 104);
    v42 = v39;
    v43 = v40;
    if ((Google_Protobuf_FileOptions.isInitialized.getter() & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t Google_Protobuf_FileOptions.isInitialized.getter()
{
  v1 = *(v0 + 24);
  v13[0] = *(v0 + 16);
  if (ExtensionFieldValueSet.isInitialized.getter())
  {
    swift_beginAccess();
    v2 = *(v1 + 192);

    v4 = sub_2685F0E50(v3);

    result = v4 + 32;
    v6 = -*(v4 + 16);
    v7 = -1;
    while (1)
    {
      v8 = v6 + v7 == -1;
      if (v6 + v7 == -1)
      {
LABEL_6:

        return v8;
      }

      if (++v7 >= *(v4 + 16))
      {
        break;
      }

      v9 = result + 40;
      sub_2685B1724(result, v13);
      v10 = v14;
      v11 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v12 = (*(v11 + 32))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v13);
      result = v9;
      if ((v12 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_2685F21CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  v11 = v4;
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 6)
      {
        if (result <= 9)
        {
          if (result == 7)
          {
            swift_beginAccess();
            v12 = *(a4 + 416);
            v13 = sub_26861615C();
            v14 = a1 + 96;
            v15 = &type metadata for Google_Protobuf_FieldDescriptorProto;
          }

          else if (result == 8)
          {
            swift_beginAccess();
            v12 = *(a4 + 408);
            v13 = sub_2686151BC();
            v14 = a1 + 104;
            v15 = &type metadata for Google_Protobuf_FileOptions;
          }

          else
          {
            swift_beginAccess();
            v12 = *(a4 + 408);
            v13 = sub_268617A3C();
            v14 = a1 + 136;
            v15 = &type metadata for Google_Protobuf_SourceCodeInfo;
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 10:
            swift_beginAccess();
            v17 = *(a4 + 88);
            v18 = a1 + 56;
            goto LABEL_30;
          case 11:
            swift_beginAccess();
            v17 = *(a4 + 88);
            v18 = a1 + 64;
            goto LABEL_30;
          case 12:
            swift_beginAccess();
            v16 = v11;
            (*(a4 + 344))(a1 + 160, a3, a4);
            goto LABEL_6;
        }
      }

      else
      {
        if (result > 3)
        {
          if (result == 4)
          {
            swift_beginAccess();
            v12 = *(a4 + 416);
            v13 = sub_268615B10();
            v14 = a1 + 72;
            v15 = &type metadata for Google_Protobuf_DescriptorProto;
          }

          else if (result == 5)
          {
            swift_beginAccess();
            v12 = *(a4 + 416);
            v13 = sub_2686164AC();
            v14 = a1 + 80;
            v15 = &type metadata for Google_Protobuf_EnumDescriptorProto;
          }

          else
          {
            swift_beginAccess();
            v12 = *(a4 + 416);
            v13 = sub_2686169A4();
            v14 = a1 + 88;
            v15 = &type metadata for Google_Protobuf_ServiceDescriptorProto;
          }

LABEL_5:
          v16 = v11;
          v12(v14, v15, v13, a3, a4);
LABEL_6:
          v11 = v16;
          swift_endAccess();
          goto LABEL_7;
        }

        switch(result)
        {
          case 1:
            swift_beginAccess();
            v17 = *(a4 + 344);
            v18 = a1 + 16;
LABEL_30:
            v16 = v11;
            v17(v18, a3, a4);
            goto LABEL_6;
          case 2:
            swift_beginAccess();
            v17 = *(a4 + 344);
            v18 = a1 + 32;
            goto LABEL_30;
          case 3:
            swift_beginAccess();
            v16 = v11;
            (*(a4 + 352))(a1 + 48, a3, a4);
            goto LABEL_6;
        }
      }

LABEL_7:
      result = v8(a3, a4);
    }
  }

  return result;
}

uint64_t sub_2685F25F4(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (a1[3])
  {
    v6 = a1[2];
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (a1[5])
  {
    v7 = a1[4];
    MEMORY[0x26D61D8F0](2);

    sub_268689A24();
  }

  swift_beginAccess();
  v8 = a1[6];
  if (*(v8 + 16))
  {
    MEMORY[0x26D61D8F0](3);
    MEMORY[0x26D61D8F0](*(v8 + 16));
    v9 = *(v8 + 16);
    if (v9)
    {

      v10 = (v8 + 40);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;

        sub_268689A24();

        v10 += 2;
        --v9;
      }

      while (v9);
    }
  }

  swift_beginAccess();
  if (!*(a1[9] + 16) || (v13 = a1[9], v14 = , sub_2685DBA60(v14, 4, sub_2685F51C0), result = , !v3))
  {
    swift_beginAccess();
    if (!*(a1[10] + 16) || (v16 = a1[10], v17 = , sub_2685DBA60(v17, 5, sub_2685FC0D8), result = , !v3))
    {
      swift_beginAccess();
      if (!*(a1[11] + 16) || (v18 = a1[11], v19 = , sub_2685DAF64(v19, 6), result = , !v3))
      {
        swift_beginAccess();
        if (!*(a1[12] + 16) || (v20 = a1[12], v21 = , sub_2685DBA60(v21, 7, sub_2685F8ADC), result = , !v3))
        {
          swift_beginAccess();
          v22 = a1[15];
          if (!v22)
          {
LABEL_22:
            swift_beginAccess();
            v31 = a1[17];
            if (v31)
            {
              v33 = a1[18];
              v32 = a1[19];
              MEMORY[0x26D61D8F0](9);

              sub_2685BA80C(v33, v32);
              sub_2685DD548(a2, v31, v33, v32);
              sub_268601BC8(v31, v33, v32);
            }

            swift_beginAccess();
            v34 = a1[7];
            if (*(v34 + 16))
            {
              MEMORY[0x26D61D8F0](10);
              MEMORY[0x26D61D8F0](*(v34 + 16));
              v35 = *(v34 + 16);
              if (v35)
              {
                v36 = (v34 + 32);
                do
                {
                  v37 = *v36++;
                  sub_268689EC4();
                  --v35;
                }

                while (v35);
              }
            }

            swift_beginAccess();
            v38 = a1[8];
            if (*(v38 + 16))
            {
              MEMORY[0x26D61D8F0](11);
              MEMORY[0x26D61D8F0](*(v38 + 16));
              v39 = *(v38 + 16);
              if (v39)
              {
                v40 = (v38 + 32);
                do
                {
                  v41 = *v40++;
                  sub_268689EC4();
                  --v39;
                }

                while (v39);
              }
            }

            result = swift_beginAccess();
            if (a1[21])
            {
              v42 = a1[20];
              MEMORY[0x26D61D8F0](12);

              sub_268689A24();
            }

            return result;
          }

          v23 = a1[13];
          v24 = a1[14];
          v25 = a1[16];
          MEMORY[0x26D61D8F0](8);
          v26 = *(a2 + 48);
          v48 = *(a2 + 32);
          v49 = v26;
          v50 = *(a2 + 64);
          v27 = *(a2 + 16);
          v46 = *a2;
          v47 = v27;
          sub_2685BA80C(v23, v24);

          sub_268602B88(v28, &v46, v23, v24, v22);
          if (v3)
          {
            MEMORY[0x26D61DC90](v3);
LABEL_21:
            sub_268601B34(v23, v24, v22);
            v29 = v49;
            *(a2 + 32) = v48;
            *(a2 + 48) = v29;
            *(a2 + 64) = v50;
            v30 = v47;
            *a2 = v46;
            *(a2 + 16) = v30;
            goto LABEL_22;
          }

          v43 = v24 >> 62;
          if ((v24 >> 62) > 1)
          {
            if (v43 != 2)
            {
              goto LABEL_21;
            }

            v44 = *(v23 + 16);
            v45 = *(v23 + 24);
          }

          else
          {
            if (!v43)
            {
              if ((v24 & 0xFF000000000000) == 0)
              {
                goto LABEL_21;
              }

              goto LABEL_43;
            }

            v44 = v23;
            v45 = v23 >> 32;
          }

          if (v44 == v45)
          {
            goto LABEL_21;
          }

LABEL_43:
          sub_268689844();
          goto LABEL_21;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F2AE4(void *a1, char **a2)
{
  swift_beginAccess();
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[2];
    v7 = a1[3];

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_2685B43A4(v6, v5);

    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
      *a2 = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      *a2 = v9;
    }

    *(v9 + 2) = v12 + 1;
    v9[v12 + 32] = 10;
  }

  swift_beginAccess();
  v13 = a1[5];
  if (v13)
  {
    v14 = a1[4];
    v15 = a1[5];

    sub_2685B301C(2);
    sub_2685B403C(": ", 2, v16);
    sub_2685B43A4(v14, v13);

    v17 = *a2;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v17;
    if ((v18 & 1) == 0)
    {
      v17 = sub_2685B3F48(0, *(v17 + 2) + 1, 1, v17);
      *a2 = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_2685B3F48((v19 > 1), v20 + 1, 1, v17);
      *a2 = v17;
    }

    *(v17 + 2) = v20 + 1;
    v17[v20 + 32] = 10;
  }

  swift_beginAccess();
  if (*(a1[6] + 16))
  {
    v21 = a1[6];

    sub_2685B530C(v22, 3);
    if (v2)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1[9] + 16) || (v24 = a1[9], v25 = , sub_26867719C(v25, 4), result = , !v2))
  {
    swift_beginAccess();
    if (!*(a1[10] + 16) || (v26 = a1[10], v27 = , sub_2686770BC(v27, 5), result = , !v2))
    {
      swift_beginAccess();
      if (!*(a1[11] + 16) || (v28 = a1[11], v29 = , sub_26867702C(v29, 6), result = , !v2))
      {
        swift_beginAccess();
        if (!*(a1[12] + 16) || (v30 = a1[12], v31 = , sub_268676FE4(v31, 7), result = , !v2))
        {
          swift_beginAccess();
          v32 = a1[15];
          if (!v32)
          {
            goto LABEL_41;
          }

          v33 = a1[16];
          v35 = a1[13];
          v34 = a1[14];
          sub_2685BA80C(v35, v34);

          sub_268672328(v35, v34, v32, v33, 8);
          result = sub_268601B34(v35, v34, v32);
          if (!v2)
          {
LABEL_41:
            swift_beginAccess();
            v36 = a1[17];
            if (!v36 || (v38 = a1[18], v37 = a1[19], v39 = a1[17], , sub_2685BA80C(v38, v37), sub_268671F4C(v36, v38, v37, 9), result = sub_268601BC8(v36, v38, v37), !v2))
            {
              swift_beginAccess();
              if (!*(a1[7] + 16) || (v40 = a1[7], v41 = , sub_2685B9988(v41, 10), result = , !v2))
              {
                swift_beginAccess();
                if (!*(a1[8] + 16) || (v42 = a1[8], v43 = , sub_2685B9988(v43, 11), result = , !v2))
                {
                  result = swift_beginAccess();
                  v44 = a1[21];
                  if (v44)
                  {
                    v45 = a1[20];

                    sub_2685B301C(12);
                    sub_2685B403C(": ", 2, v46);
                    sub_2685B43A4(v45, v44);

                    v47 = *a2;
                    result = swift_isUniquelyReferenced_nonNull_native();
                    *a2 = v47;
                    if ((result & 1) == 0)
                    {
                      result = sub_2685B3F48(0, *(v47 + 16) + 1, 1, v47);
                      v47 = result;
                      *a2 = result;
                    }

                    v49 = *(v47 + 16);
                    v48 = *(v47 + 24);
                    if (v49 >= v48 >> 1)
                    {
                      result = sub_2685B3F48((v48 > 1), v49 + 1, 1, v47);
                      v47 = result;
                      *a2 = result;
                    }

                    *(v47 + 16) = v49 + 1;
                    *(v47 + v49 + 32) = 10;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F3060(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = *(a1 + 16);
    v11 = a4[14];
    v12 = *(a1 + 24);

    v11(v10, v9, 1, a3, a4);
    if (v5)
    {
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = a4[14];
    v16 = *(a1 + 40);

    v15(v14, v13, 2, a3, a4);
    if (v5)
    {
    }
  }

  swift_beginAccess();
  if (!*(*(a1 + 48) + 16))
  {
    goto LABEL_10;
  }

  v17 = a4[32];
  v18 = *(a1 + 48);

  v17(v19, 3, a3, a4);
  if (v5)
  {
  }

LABEL_10:
  swift_beginAccess();
  if (*(*(a1 + 72) + 16))
  {
    v20 = a4[35];
    v21 = sub_268615B10();

    v20(v22, 4, &type metadata for Google_Protobuf_DescriptorProto, v21, a3, a4);
    if (v5)
    {
    }
  }

  swift_beginAccess();
  if (!*(*(a1 + 80) + 16) || (v24 = a4[35], v25 = sub_2686164AC(), v26 = , v24(v26, 5, &type metadata for Google_Protobuf_EnumDescriptorProto, v25, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    if (!*(*(a1 + 88) + 16) || (v27 = a4[35], v28 = sub_2686169A4(), v29 = , v27(v29, 6, &type metadata for Google_Protobuf_ServiceDescriptorProto, v28, a3, a4), result = , !v5))
    {
      swift_beginAccess();
      if (!*(*(a1 + 96) + 16) || (v30 = a4[35], v31 = sub_26861615C(), v32 = , v30(v32, 7, &type metadata for Google_Protobuf_FieldDescriptorProto, v31, a3, a4), result = , !v5))
      {
        swift_beginAccess();
        v33 = *(a1 + 120);
        if (!v33 || (v34 = *(a1 + 128), v48 = *(a1 + 104), v49 = v33, v50 = v34, v35 = a4[17], v36 = sub_2686151BC(), result = v35(&v48, 8, &type metadata for Google_Protobuf_FileOptions, v36, a3, a4), !v5))
        {
          swift_beginAccess();
          if (!*(a1 + 136) || (v51 = *(a1 + 136), v52 = *(a1 + 144), v37 = a4[17], v38 = sub_268617A3C(), result = v37(&v51, 9, &type metadata for Google_Protobuf_SourceCodeInfo, v38, a3, a4), !v5))
          {
            swift_beginAccess();
            if (!*(*(a1 + 56) + 16) || (v39 = a4[21], v40 = *(a1 + 56), v41 = , v39(v41, 10, a3, a4), result = , !v5))
            {
              swift_beginAccess();
              if (!*(*(a1 + 64) + 16) || (v42 = a4[21], v43 = *(a1 + 64), v44 = , v42(v44, 11, a3, a4), result = , !v5))
              {
                result = swift_beginAccess();
                v45 = *(a1 + 168);
                if (v45)
                {
                  v46 = *(a1 + 160);
                  v47 = a4[14];

                  v47(v46, v45, 12, a3, a4);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F35C0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = v4 == a2[2] && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  swift_beginAccess();
  v8 = a1[4];
  v9 = a1[5];
  swift_beginAccess();
  v10 = a2[5];
  if (v9)
  {
    if (!v10 || (v8 != a2[4] || v9 != v10) && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  swift_beginAccess();
  v11 = a1[6];
  swift_beginAccess();
  if ((sub_26860EBDC(v11, a2[6]) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v12 = a1[7];
  swift_beginAccess();
  if ((sub_26860E058(v12, a2[7]) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v13 = a1[8];
  swift_beginAccess();
  if ((sub_26860E058(v13, a2[8]) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v14 = a1[9];
  swift_beginAccess();
  v15 = a2[9];

  v16 = sub_2686123CC(v14, v15, sub_2685F639C);

  if ((v16 & 1) == 0)
  {
    goto LABEL_49;
  }

  swift_beginAccess();
  v17 = a1[10];
  swift_beginAccess();
  v18 = a2[10];

  v19 = sub_2686123CC(v17, v18, sub_2685FC864);

  if ((v19 & 1) == 0)
  {
    goto LABEL_49;
  }

  swift_beginAccess();
  v20 = a1[11];
  swift_beginAccess();
  v21 = a2[11];

  v22 = sub_2686123CC(v20, v21, sub_2685FF76C);

  if ((v22 & 1) == 0)
  {
    goto LABEL_49;
  }

  swift_beginAccess();
  v23 = a1[12];
  swift_beginAccess();
  v24 = a2[12];

  v25 = sub_2686123CC(v23, v24, sub_2685F9A70);

  if ((v25 & 1) == 0)
  {
    goto LABEL_49;
  }

  swift_beginAccess();
  v27 = a1[13];
  v26 = a1[14];
  v29 = a1[15];
  v28 = a1[16];
  swift_beginAccess();
  v31 = a2[13];
  v30 = a2[14];
  v33 = a2[15];
  v32 = a2[16];
  if (v29)
  {
    v54 = v27;
    v55 = v26;
    v56 = v29;
    v57 = v28;
    if (v33)
    {
      v50 = v31;
      v51 = v30;
      v52 = v33;
      v53 = v32;
      sub_268601AE8(v27, v26, v29);
      sub_268601AE8(v31, v30, v33);
      sub_268601AE8(v27, v26, v29);
      v34 = _s20SiriOntologyProtobuf07Google_C12_FileOptionsV2eeoiySbAC_ACtFZ_0(&v54, &v50);
      sub_2685B593C(v50, v51);

      sub_2685B593C(v54, v55);

      sub_268601B34(v27, v26, v29);
      if ((v34 & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_33;
    }

    sub_268601AE8(v27, v26, v29);
    sub_268601AE8(v31, v30, 0);
    sub_268601AE8(v27, v26, v29);
    sub_268601AE8(v31, v30, 0);
    sub_268601AE8(v27, v26, v29);

    sub_268601B34(v31, v30, 0);
    sub_268601B34(v27, v26, v29);
    sub_2685B593C(v27, v26);

LABEL_31:
    sub_268601B34(v27, v26, v29);
    sub_268601B34(v31, v30, v33);
    return 0;
  }

  sub_268601AE8(v27, v26, 0);
  if (v33)
  {
    sub_268601AE8(v31, v30, v33);

    goto LABEL_31;
  }

  sub_268601AE8(v31, v30, 0);
  sub_268601B34(v27, v26, 0);
LABEL_33:
  swift_beginAccess();
  v36 = a1[17];
  v35 = a1[18];
  v37 = a1[19];
  swift_beginAccess();
  v39 = a2[17];
  v38 = a2[18];
  v40 = a2[19];
  if (v36)
  {
    if (v39)
    {
      sub_268601B80(v36, v35, v37);
      sub_268601B80(v39, v38, v40);
      sub_268601B80(v36, v35, v37);
      sub_268601B80(v39, v38, v40);
      sub_268601B80(v36, v35, v37);
      if ((sub_26860E688(v36, v39) & 1) == 0)
      {
        sub_268601BC8(v39, v38, v40);
        sub_268601BC8(v36, v35, v37);
        sub_268601BC8(v39, v38, v40);

        sub_2685B593C(v35, v37);
        sub_268601BC8(v36, v35, v37);
        goto LABEL_49;
      }

      sub_2685BA80C(v35, v37);
      sub_2685BA80C(v38, v40);
      v41 = sub_2686131DC(v35, v37, v38, v40);
      sub_2685B593C(v38, v40);
      sub_2685B593C(v35, v37);
      sub_268601BC8(v39, v38, v40);
      sub_268601BC8(v36, v35, v37);
      sub_268601BC8(v39, v38, v40);

      sub_2685B593C(v35, v37);
      sub_268601BC8(v36, v35, v37);
      if ((v41 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_44:
      swift_beginAccess();
      v42 = a1[20];
      v43 = a1[21];
      swift_beginAccess();
      v44 = a2[21];
      if (!v43)
      {
        v47 = a2[21];

        if (v44)
        {

          return 0;
        }

        return 1;
      }

      if (v44)
      {
        if (v42 == a2[20] && v43 == v44)
        {
          v45 = a2[21];
        }

        else
        {
          v48 = a2[21];
          v49 = sub_268689E14();

          if ((v49 & 1) == 0)
          {
            return 0;
          }
        }

        return 1;
      }

LABEL_49:

      return 0;
    }

    sub_268601B80(v36, v35, v37);
    sub_268601B80(0, v38, v40);
    sub_268601B80(v36, v35, v37);
    sub_268601B80(0, v38, v40);
    sub_268601B80(v36, v35, v37);

    sub_268601BC8(0, v38, v40);
    sub_268601BC8(v36, v35, v37);

    sub_2685B593C(v35, v37);
  }

  else
  {
    sub_268601B80(0, v35, v37);
    if (!v39)
    {
      sub_268601B80(0, v38, v40);
      sub_268601BC8(0, v35, v37);
      goto LABEL_44;
    }

    sub_268601B80(v39, v38, v40);
  }

  sub_268601BC8(v36, v35, v37);
  sub_268601BC8(v39, v38, v40);
  return 0;
}

uint64_t sub_2685F3FD0@<X0>(void *a1@<X8>)
{
  if (qword_28028BC50 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C430;
  v2 = qword_28028C438;
  v3 = unk_28028C440;
  *a1 = qword_28028C428;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_DescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C458;
  v2 = qword_28028C460;
  v3 = unk_28028C468;
  *a1 = qword_28028C450;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

double sub_2685F41BC()
{
  type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = v1;
  *(v0 + 48) = v1;
  *(v0 + 56) = v1;
  *(v0 + 64) = v1;
  *(v0 + 72) = v1;
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 120) = v1;
  *(v0 + 128) = v1;
  qword_28028C470 = v0;
  return result;
}

uint64_t sub_2685F4214(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v1 + 32) = MEMORY[0x277D84F90];
  *(v1 + 40) = v4;
  *(v1 + 48) = v4;
  *(v1 + 56) = v4;
  *(v1 + 64) = v4;
  *(v1 + 72) = v4;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *(v1 + 80) = 0u;
  *(v1 + 120) = v4;
  *(v1 + 128) = v4;
  swift_beginAccess();
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v6;
  *(v1 + 24) = v5;
  swift_beginAccess();
  v7 = *(a1 + 32);
  swift_beginAccess();
  *(v2 + 32) = v7;

  swift_beginAccess();
  v8 = *(a1 + 40);
  swift_beginAccess();
  v9 = *(v2 + 40);
  *(v2 + 40) = v8;

  swift_beginAccess();
  v10 = *(a1 + 48);
  swift_beginAccess();
  v11 = *(v2 + 48);
  *(v2 + 48) = v10;

  swift_beginAccess();
  v12 = *(a1 + 56);
  swift_beginAccess();
  v13 = *(v2 + 56);
  *(v2 + 56) = v12;

  swift_beginAccess();
  v14 = *(a1 + 64);
  swift_beginAccess();
  v15 = *(v2 + 64);
  *(v2 + 64) = v14;

  swift_beginAccess();
  v16 = *(a1 + 72);
  swift_beginAccess();
  v17 = *(v2 + 72);
  *(v2 + 72) = v16;

  swift_beginAccess();
  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  v20 = *(a1 + 96);
  v21 = *(a1 + 104);
  v22 = *(a1 + 112);
  swift_beginAccess();
  v23 = *(v2 + 80);
  v24 = *(v2 + 88);
  v25 = *(v2 + 96);
  v32 = *(v2 + 104);
  v31 = *(v2 + 112);
  *(v2 + 80) = v18;
  *(v2 + 88) = v19;
  *(v2 + 96) = v20;
  *(v2 + 104) = v21;
  *(v2 + 112) = v22;
  sub_268601C34(v18, v19, v20);
  sub_268601C90(v23, v24, v25);
  swift_beginAccess();
  v26 = *(a1 + 120);
  swift_beginAccess();
  v27 = *(v2 + 120);
  *(v2 + 120) = v26;

  swift_beginAccess();
  v28 = *(a1 + 128);

  swift_beginAccess();
  v29 = *(v2 + 128);
  *(v2 + 128) = v28;

  return v2;
}

uint64_t sub_2685F45CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  sub_268601C90(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  v10 = *(v0 + 120);

  v11 = *(v0 + 128);

  return v0;
}

uint64_t sub_2685F463C()
{
  sub_2685F45CC();

  return swift_deallocClassInstance();
}

uint64_t sub_2685F4674(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 32);

  v5 = sub_2685F10F0(v4, &type metadata for Google_Protobuf_FieldDescriptorProto, sub_26861615C);

  v6 = v5 + 32;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
      return 1;
    }

    v9 = v6 + 40;
    sub_2685B1724(v6, v72);
    v1 = v73;
    v10 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v11 = (*(v10 + 32))(v1, v10);
    __swift_destroy_boxed_opaque_existential_1(v72);
    v6 = v9;
    if ((v11 & 1) == 0)
    {
LABEL_30:

      return 0;
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 40);

  v14 = sub_2685F10F0(v13, &type metadata for Google_Protobuf_FieldDescriptorProto, sub_26861615C);

  v15 = v14 + 32;
  v16 = -*(v14 + 16);
  v17 = -1;
  while (v16 + v17 != -1)
  {
    if (++v17 >= *(v14 + 16))
    {
      __break(1u);
LABEL_45:

      sub_268601C90(v1, v16, v71);
      return 1;
    }

    v18 = v15 + 40;
    sub_2685B1724(v15, v72);
    v1 = v73;
    v19 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v20 = (*(v19 + 32))(v1, v19);
    __swift_destroy_boxed_opaque_existential_1(v72);
    v15 = v18;
    if ((v20 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  swift_beginAccess();
  v21 = *(a1 + 48);

  v23 = sub_2685F10F0(v22, &type metadata for Google_Protobuf_DescriptorProto, sub_268615B10);

  result = v23 + 32;
  v25 = -*(v23 + 16);
  v26 = -1;
  while (v25 + v26 != -1)
  {
    if (++v26 >= *(v23 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    v27 = result + 40;
    sub_2685B1724(result, v72);
    v28 = v73;
    v29 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v30 = (*(v29 + 32))(v28, v29);
    __swift_destroy_boxed_opaque_existential_1(v72);
    result = v27;
    if ((v30 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 56);

  v33 = sub_2685F10F0(v32, &type metadata for Google_Protobuf_EnumDescriptorProto, sub_2686164AC);

  result = v33 + 32;
  v34 = -*(v33 + 16);
  v35 = -1;
  while (v34 + v35 != -1)
  {
    if (++v35 >= *(v33 + 16))
    {
      goto LABEL_47;
    }

    v36 = result + 40;
    sub_2685B1724(result, v72);
    v37 = v73;
    v38 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v39 = (*(v38 + 32))(v37, v38);
    __swift_destroy_boxed_opaque_existential_1(v72);
    result = v36;
    if ((v39 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 64);

  v42 = sub_2685F10F0(v41, &type metadata for Google_Protobuf_DescriptorProto.ExtensionRange, sub_268615CB8);

  result = v42 + 32;
  v43 = -*(v42 + 16);
  v44 = -1;
  while (v43 + v44 != -1)
  {
    if (++v44 >= *(v42 + 16))
    {
      goto LABEL_48;
    }

    v45 = result + 40;
    sub_2685B1724(result, v72);
    v46 = v73;
    v47 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v48 = (*(v47 + 32))(v46, v47);
    __swift_destroy_boxed_opaque_existential_1(v72);
    result = v45;
    if ((v48 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  swift_beginAccess();
  v49 = *(a1 + 72);

  v51 = sub_2685F10F0(v50, &type metadata for Google_Protobuf_OneofDescriptorProto, sub_268616304);

  result = v51 + 32;
  v52 = -*(v51 + 16);
  v53 = -1;
  while (v52 + v53 != -1)
  {
    if (++v53 >= *(v51 + 16))
    {
      goto LABEL_49;
    }

    v54 = result + 40;
    sub_2685B1724(result, v72);
    v55 = v73;
    v56 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v57 = (*(v56 + 32))(v55, v56);
    __swift_destroy_boxed_opaque_existential_1(v72);
    result = v54;
    if ((v57 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  swift_beginAccess();
  v1 = *(a1 + 80);
  if (v1)
  {
    v16 = *(a1 + 88);
    v58 = *(a1 + 96);
    v59 = *(a1 + 104);
    v60 = *(a1 + 112);
    v72[0] = v59;

    sub_2685BA80C(v16, v58);

    if (ExtensionFieldValueSet.isInitialized.getter())
    {
      v71 = v58;
      v61 = sub_2685F0E50(v1);
      result = v61 + 32;
      v62 = -*(v61 + 16);
      v63 = -1;
      while (v62 + v63 != -1)
      {
        if (++v63 >= *(v61 + 16))
        {
          goto LABEL_50;
        }

        v64 = result + 40;
        sub_2685B1724(result, v72);
        v65 = v73;
        v66 = v74;
        __swift_project_boxed_opaque_existential_1(v72, v73);
        v67 = (*(v66 + 32))(v65, v66);
        __swift_destroy_boxed_opaque_existential_1(v72);
        result = v64;
        if ((v67 & 1) == 0)
        {

          v68 = v1;
          v69 = v16;
          v70 = v71;
          goto LABEL_43;
        }
      }

      goto LABEL_45;
    }

    v68 = v1;
    v69 = v16;
    v70 = v58;
LABEL_43:
    sub_268601C90(v68, v69, v70);
    return 0;
  }

  return 1;
}

BOOL Google_Protobuf_MessageOptions.isInitialized.getter()
{
  v1 = *v0;
  v5 = v0[3];
  if ((ExtensionFieldValueSet.isInitialized.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_2685F0E50(v1);
  v3 = _s20SiriOntologyProtobuf8InternalO17areAllInitializedySbSayAA7Message_pGFZ_0(v2);

  return v3;
}

uint64_t sub_2685F4DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result != 6)
          {
            swift_beginAccess();
            v16 = *(a4 + 408);
            v17 = sub_268614944();
            v16(a1 + 80, &type metadata for Google_Protobuf_MessageOptions, v17, a3, a4);
            goto LABEL_6;
          }

          v11 = v4;
          swift_beginAccess();
          v12 = *(a4 + 416);
          v13 = sub_26861615C();
          v14 = a1 + 40;
          v15 = &type metadata for Google_Protobuf_FieldDescriptorProto;
          goto LABEL_5;
        }

        switch(result)
        {
          case 8:
            v11 = v4;
            swift_beginAccess();
            v12 = *(a4 + 416);
            v13 = sub_268616304();
            v14 = a1 + 72;
            v15 = &type metadata for Google_Protobuf_OneofDescriptorProto;
LABEL_5:
            v4 = v11;
            v12(v14, v15, v13, a3, a4);
LABEL_6:
            swift_endAccess();
            break;
          case 9:
            v11 = v4;
            swift_beginAccess();
            v12 = *(a4 + 416);
            v13 = sub_268615E60();
            v14 = a1 + 120;
            v15 = &type metadata for Google_Protobuf_DescriptorProto.ReservedRange;
            goto LABEL_5;
          case 10:
            swift_beginAccess();
            (*(a4 + 352))(a1 + 128, a3, a4);
            goto LABEL_6;
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
            v11 = v4;
            swift_beginAccess();
            v12 = *(a4 + 416);
            v13 = sub_268615B10();
            v14 = a1 + 48;
            v15 = &type metadata for Google_Protobuf_DescriptorProto;
          }

          else
          {
            v11 = v4;
            if (result == 4)
            {
              swift_beginAccess();
              v12 = *(a4 + 416);
              v13 = sub_2686164AC();
              v14 = a1 + 56;
              v15 = &type metadata for Google_Protobuf_EnumDescriptorProto;
            }

            else
            {
              swift_beginAccess();
              v12 = *(a4 + 416);
              v13 = sub_268615CB8();
              v14 = a1 + 64;
              v15 = &type metadata for Google_Protobuf_DescriptorProto.ExtensionRange;
            }
          }

          goto LABEL_5;
        }

        if (result == 1)
        {
          swift_beginAccess();
          (*(a4 + 344))(a1 + 16, a3, a4);
          goto LABEL_6;
        }

        if (result == 2)
        {
          v11 = v4;
          swift_beginAccess();
          v12 = *(a4 + 416);
          v13 = sub_26861615C();
          v14 = a1 + 32;
          v15 = &type metadata for Google_Protobuf_FieldDescriptorProto;
          goto LABEL_5;
        }
      }

      result = v8(a3, a4);
    }
  }

  return result;
}

uint64_t sub_2685F51C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v7 = *(a1 + 32), v8 = , sub_2685DBA60(v8, 2, sub_2685F8ADC), result = , !v2))
  {
    swift_beginAccess();
    v10 = *(a1 + 48);
    if (*(v10 + 16))
    {
      MEMORY[0x26D61D8F0](3);
      v11 = *(v10 + 16);
      if (v11)
      {
        v89 = a1;

        v12 = (v10 + 48);
        while (1)
        {
          v15 = *(v12 - 2);
          v16 = *(v12 - 1);
          v17 = *v12;
          v18 = *(a2 + 48);
          v118 = *(a2 + 32);
          v119 = v18;
          v120 = *(a2 + 64);
          v19 = *(a2 + 16);
          v116 = *a2;
          v117 = v19;
          sub_2685BA80C(v15, v16);

          sub_2685F51C0(v20, &v116);
          if (v3)
          {
            MEMORY[0x26D61DC90](v3);
            v3 = 0;
          }

          else
          {
            v21 = v16 >> 62;
            if ((v16 >> 62) > 1)
            {
              if (v21 != 2)
              {
                goto LABEL_9;
              }

              v22 = *(v15 + 16);
              v23 = *(v15 + 24);
            }

            else
            {
              if (!v21)
              {
                if ((v16 & 0xFF000000000000) == 0)
                {
                  goto LABEL_9;
                }

LABEL_19:
                sub_268689844();
                goto LABEL_9;
              }

              v22 = v15;
              v23 = v15 >> 32;
            }

            if (v22 != v23)
            {
              goto LABEL_19;
            }
          }

LABEL_9:
          v13 = v119;
          *(a2 + 32) = v118;
          *(a2 + 48) = v13;
          *(a2 + 64) = v120;
          v14 = v117;
          *a2 = v116;
          *(a2 + 16) = v14;
          sub_2685B593C(v15, v16);

          v12 += 3;
          if (!--v11)
          {

            a1 = v89;
            break;
          }
        }
      }
    }

    swift_beginAccess();
    if (!*(*(a1 + 56) + 16) || (v24 = *(a1 + 56), v25 = , sub_2685DBA60(v25, 4, sub_2685FC0D8), result = , !v3))
    {
      swift_beginAccess();
      v26 = *(a1 + 64);
      v27 = *(v26 + 16);
      v126 = a2;
      if (v27)
      {
        MEMORY[0x26D61D8F0](5);
        v28 = *(v26 + 16);
        if (v28)
        {
          v87 = v3;
          v90 = a1;
          v29 = *(a2 + 48);
          v113 = *(a2 + 32);
          v114 = v29;
          v115 = *(a2 + 64);
          v30 = *(a2 + 16);
          v111 = *a2;
          v112 = v30;

          v31 = v28 - 1;
          for (i = (v26 + 48); ; i += 3)
          {
            v33 = *(i - 2);
            v34 = *(i - 1);
            v35 = *i;
            v108 = v113;
            v109 = v114;
            v110 = v115;
            v106 = v111;
            v107 = v112;
            swift_beginAccess();
            if ((*(v35 + 20) & 1) == 0)
            {
              v36 = *(v35 + 16);
              MEMORY[0x26D61D8F0](1);
              MEMORY[0x26D61D920](v36);
            }

            swift_beginAccess();
            if ((*(v35 + 28) & 1) == 0)
            {
              v37 = *(v35 + 24);
              MEMORY[0x26D61D8F0](2);
              MEMORY[0x26D61D920](v37);
            }

            swift_beginAccess();
            v38 = *(v35 + 32);
            if (v38)
            {
              v93 = v31;
              v39 = *(v35 + 48);
              v40 = *(v35 + 56);
              v41 = i;
              v42 = *(v35 + 40);
              MEMORY[0x26D61D8F0](3);
              sub_2685BA80C(v33, v34);

              sub_268601C34(v38, v42, v39);
              sub_2685DCFC0(&v106, v38, v42, v39, v40);
              v43 = v42;
              i = v41;
              v44 = v39;
              v31 = v93;
              sub_268601C90(v38, v43, v44);
            }

            else
            {
              sub_2685BA80C(v33, v34);
            }

            v45 = v34 >> 62;
            a2 = v126;
            if ((v34 >> 62) > 1)
            {
              if (v45 == 2 && *(v33 + 16) != *(v33 + 24))
              {
                goto LABEL_41;
              }
            }

            else
            {
              if (v45)
              {
                if (v33 == v33 >> 32)
                {
                  goto LABEL_42;
                }

LABEL_41:
                sub_268689844();
                goto LABEL_42;
              }

              if ((v34 & 0xFF000000000000) != 0)
              {
                goto LABEL_41;
              }
            }

LABEL_42:
            sub_2685B593C(v33, v34);

            if (!v31)
            {
              v46 = v109;
              *(a2 + 32) = v108;
              *(a2 + 48) = v46;
              *(a2 + 64) = v110;
              v47 = v107;
              *a2 = v106;
              *(a2 + 16) = v47;

              v3 = v87;
              a1 = v90;
              break;
            }

            v113 = v108;
            v114 = v109;
            v115 = v110;
            v111 = v106;
            v112 = v107;
            --v31;
          }
        }
      }

      swift_beginAccess();
      if (!*(*(a1 + 40) + 16) || (v48 = *(a1 + 40), v49 = , sub_2685DBA60(v49, 6, sub_2685F8ADC), result = , !v3))
      {
        swift_beginAccess();
        v50 = *(a1 + 80);
        if (v50)
        {
          v51 = v3;
          v52 = *(a1 + 88);
          v53 = *(a1 + 96);
          v54 = *(a1 + 104);
          v55 = *(a1 + 112);
          v121 = *(a1 + 80);
          v122 = v52;
          v123 = v53;
          v124 = v54;
          v125 = v55;
          MEMORY[0x26D61D8F0](7);
          v56 = *(a2 + 48);
          v98 = *(a2 + 32);
          v99 = v56;
          v100 = *(a2 + 64);
          v57 = *(a2 + 16);
          v96 = *a2;
          v97 = v57;
          *&v111 = v50;
          *(&v111 + 1) = v52;
          *&v112 = v53;
          *(&v112 + 1) = v54;
          LODWORD(v113) = v55;
          sub_268601CEC(&v111, v95);
          sub_26860555C(&v96);
          if (v51)
          {
            MEMORY[0x26D61DC90](v51);
          }

          sub_268601C90(v50, v52, v53);
          v58 = v99;
          a2 = v126;
          *(v126 + 32) = v98;
          *(a2 + 48) = v58;
          *(a2 + 64) = v100;
          v59 = v97;
          *a2 = v96;
          *(a2 + 16) = v59;
          v3 = 0;
        }

        swift_beginAccess();
        v60 = *(a1 + 72);
        if (*(v60 + 16))
        {
          MEMORY[0x26D61D8F0](8);
          v61 = *(v60 + 16);
          if (v61)
          {
            v88 = v3;
            v91 = a1;
            v62 = *(a2 + 48);
            v113 = *(a2 + 32);
            v114 = v62;
            v115 = *(a2 + 64);
            v63 = *(a2 + 16);
            v111 = *a2;
            v112 = v63;

            v64 = v61 - 1;
            for (j = (v60 + 48); ; j += 3)
            {
              v66 = *(j - 2);
              v67 = *(j - 1);
              v68 = *j;
              v103 = v113;
              v104 = v114;
              v105 = v115;
              v101 = v111;
              v102 = v112;
              swift_beginAccess();
              if (v68[3])
              {
                v69 = v68[2];
                MEMORY[0x26D61D8F0](1);
                sub_2685BA80C(v66, v67);

                sub_268689A24();
              }

              else
              {
                sub_2685BA80C(v66, v67);
              }

              swift_beginAccess();
              v70 = v68[4];
              if (v70)
              {
                v92 = j;
                v94 = v64;
                v72 = v68[6];
                v71 = v68[7];
                v73 = v68[5];
                MEMORY[0x26D61D8F0](2);

                sub_2685BA80C(v73, v72);

                sub_2685DCFC0(&v101, v70, v73, v72, v71);
                v74 = v73;
                v75 = v72;
                j = v92;
                v64 = v94;
                sub_268601C90(v70, v74, v75);
              }

              v76 = v67 >> 62;
              if ((v67 >> 62) > 1)
              {
                v77 = v126;
                if (v76 == 2 && *(v66 + 16) != *(v66 + 24))
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v77 = v126;
                if (v76)
                {
                  if (v66 == v66 >> 32)
                  {
                    goto LABEL_68;
                  }

LABEL_67:
                  sub_268689844();
                  goto LABEL_68;
                }

                if ((v67 & 0xFF000000000000) != 0)
                {
                  goto LABEL_67;
                }
              }

LABEL_68:
              sub_2685B593C(v66, v67);

              if (!v64)
              {
                v78 = v104;
                *(v77 + 32) = v103;
                *(v77 + 48) = v78;
                *(v77 + 64) = v105;
                v79 = v102;
                *v77 = v101;
                *(v77 + 16) = v79;

                v3 = v88;
                a1 = v91;
                break;
              }

              v113 = v103;
              v114 = v104;
              v115 = v105;
              v111 = v101;
              v112 = v102;
              --v64;
            }
          }
        }

        swift_beginAccess();
        if (!*(*(a1 + 120) + 16) || (v80 = *(a1 + 120), v81 = , sub_2685DBBD8(v81, 9), result = , !v3))
        {
          result = swift_beginAccess();
          v82 = *(a1 + 128);
          if (*(v82 + 16))
          {
            MEMORY[0x26D61D8F0](10);
            result = MEMORY[0x26D61D8F0](*(v82 + 16));
            v83 = *(v82 + 16);
            if (v83)
            {

              v84 = (v82 + 40);
              do
              {
                v86 = *(v84 - 1);
                v85 = *v84;

                sub_268689A24();

                v84 += 2;
                --v83;
              }

              while (v83);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F5AD0(uint64_t a1, char **a2)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_2685B43A4(v6, v5);

    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
      *a2 = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      *a2 = v9;
    }

    *(v9 + 2) = v12 + 1;
    v9[v12 + 32] = 10;
  }

  swift_beginAccess();
  if (*(*(a1 + 32) + 16))
  {
    v13 = *(a1 + 32);

    sub_268676FE4(v14, 2);
    if (v2)
    {
    }
  }

  swift_beginAccess();
  if (!*(*(a1 + 48) + 16) || (v16 = *(a1 + 48), v17 = , sub_26867719C(v17, 3), result = , !v2))
  {
    swift_beginAccess();
    if (!*(*(a1 + 56) + 16) || (v18 = *(a1 + 56), v19 = , sub_2686770BC(v19, 4), result = , !v2))
    {
      swift_beginAccess();
      if (!*(*(a1 + 64) + 16) || (v20 = *(a1 + 64), v21 = , sub_26867775C(v21, 5), result = , !v2))
      {
        swift_beginAccess();
        if (!*(*(a1 + 40) + 16) || (v22 = *(a1 + 40), v23 = , sub_268676FE4(v23, 6), result = , !v2))
        {
          swift_beginAccess();
          v24 = *(a1 + 80);
          if (!v24)
          {
            goto LABEL_29;
          }

          v25 = *(a1 + 112);
          v27 = *(a1 + 96);
          v26 = *(a1 + 104);
          v28 = *(a1 + 88);
          v37[0] = *(a1 + 80);
          v37[1] = v28;
          v37[2] = v27;
          v37[3] = v26;
          v38 = v25;
          v35[0] = v24;
          v35[1] = v28;
          v35[2] = v27;
          v35[3] = v26;
          v36 = v25;
          sub_268601CEC(v35, v34);
          sub_268673B30(v37, 7);
          result = sub_268601C90(v24, v28, v27);
          if (!v2)
          {
LABEL_29:
            swift_beginAccess();
            if (!*(*(a1 + 72) + 16) || (v29 = *(a1 + 72), v30 = , sub_268677714(v30, 8), result = , !v2))
            {
              swift_beginAccess();
              if (!*(*(a1 + 120) + 16) || (v31 = *(a1 + 120), v32 = , sub_2686771E4(v32, 9), result = , !v2))
              {
                result = swift_beginAccess();
                if (*(*(a1 + 128) + 16))
                {

                  sub_2685B530C(v33, 10);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F5EAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = *(a1 + 16);
    v11 = a4[14];
    v12 = *(a1 + 24);

    v11(v10, v9, 1, a3, a4);
    if (v5)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 32) + 16))
  {
    v13 = a4[35];
    v14 = sub_26861615C();

    v13(v15, 2, &type metadata for Google_Protobuf_FieldDescriptorProto, v14, a3, a4);
    if (v5)
    {
    }
  }

  swift_beginAccess();
  if (!*(*(a1 + 48) + 16) || (v17 = a4[35], v18 = sub_268615B10(), v19 = , v17(v19, 3, &type metadata for Google_Protobuf_DescriptorProto, v18, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    if (!*(*(a1 + 56) + 16) || (v20 = a4[35], v21 = sub_2686164AC(), v22 = , v20(v22, 4, &type metadata for Google_Protobuf_EnumDescriptorProto, v21, a3, a4), result = , !v5))
    {
      swift_beginAccess();
      if (!*(*(a1 + 64) + 16) || (v23 = a4[35], v24 = sub_268615CB8(), v25 = , v23(v25, 5, &type metadata for Google_Protobuf_DescriptorProto.ExtensionRange, v24, a3, a4), result = , !v5))
      {
        swift_beginAccess();
        if (!*(*(a1 + 40) + 16) || (v26 = a4[35], v27 = sub_26861615C(), v28 = , v26(v28, 6, &type metadata for Google_Protobuf_FieldDescriptorProto, v27, a3, a4), result = , !v5))
        {
          swift_beginAccess();
          if (!*(a1 + 80))
          {
            goto LABEL_27;
          }

          v29 = *(a1 + 112);
          v30 = *(a1 + 104);
          v41 = *(a1 + 80);
          v42 = *(a1 + 88);
          v43 = v30;
          v44 = v29;
          v31 = a4[17];
          v32 = sub_268614944();
          result = v31(&v41, 7, &type metadata for Google_Protobuf_MessageOptions, v32, a3, a4);
          if (!v5)
          {
LABEL_27:
            swift_beginAccess();
            if (!*(*(a1 + 72) + 16) || (v33 = a4[35], v34 = sub_268616304(), v35 = , v33(v35, 8, &type metadata for Google_Protobuf_OneofDescriptorProto, v34, a3, a4), result = , !v5))
            {
              swift_beginAccess();
              if (!*(*(a1 + 120) + 16) || (v36 = a4[35], v37 = sub_268615E60(), v38 = , v36(v38, 9, &type metadata for Google_Protobuf_DescriptorProto.ReservedRange, v37, a3, a4), result = , !v5))
              {
                result = swift_beginAccess();
                if (*(*(a1 + 128) + 16))
                {
                  v39 = a4[32];

                  v39(v40, 10, a3, a4);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F639C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_28;
    }

    v7 = v4 == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v6)
  {
LABEL_28:
    v51 = 0;
    return v51 & 1;
  }

  swift_beginAccess();
  v8 = *(a1 + 32);
  swift_beginAccess();
  v9 = *(a2 + 32);

  v10 = sub_2686123CC(v8, v9, sub_2685F9A70);

  if ((v10 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v11 = *(a1 + 40);
  swift_beginAccess();
  v12 = *(a2 + 40);

  v13 = sub_2686123CC(v11, v12, sub_2685F9A70);

  if ((v13 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v14 = *(a1 + 48);
  swift_beginAccess();
  v15 = *(a2 + 48);

  v16 = sub_2686123CC(v14, v15, sub_2685F639C);

  if ((v16 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v17 = *(a1 + 56);
  swift_beginAccess();
  v18 = *(a2 + 56);

  v19 = sub_2686123CC(v17, v18, sub_2685FC864);

  if ((v19 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v20 = *(a1 + 64);
  swift_beginAccess();
  v21 = *(a2 + 64);

  v22 = sub_2686123CC(v20, v21, sub_2685F7450);

  if ((v22 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v23 = *(a1 + 72);
  swift_beginAccess();
  v24 = *(a2 + 72);

  v25 = sub_2686123CC(v23, v24, sub_2685FB14C);

  if ((v25 & 1) == 0)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  v29 = *(a1 + 96);
  v28 = *(a1 + 104);
  v30 = *(a1 + 112);
  swift_beginAccess();
  v31 = v26;
  v33 = *(a2 + 80);
  v32 = *(a2 + 88);
  v34 = *(a2 + 96);
  v57 = v31;
  v58 = *(a2 + 104);
  v35 = *(a2 + 112);
  if (!v31)
  {
    v54 = *(a2 + 96);
    v56 = *(a2 + 112);
    v37 = v27;
    v38 = v27;
    v39 = v29;
    sub_268601C34(0, v38, v29);
    v40 = v33;
    v41 = v37;
    if (!v40)
    {
      sub_268601C34(0, v32, v54);
      sub_268601C90(0, v37, v29);
      goto LABEL_25;
    }

    v55 = v40;
    v42 = v32;
    v43 = v32;
    v44 = v54;
    sub_268601C34(v40, v43, v54);

    v45 = 0;
    goto LABEL_23;
  }

  *&v67 = v31;
  *(&v67 + 1) = v27;
  *&v68 = v29;
  *(&v68 + 1) = v28;
  v69 = v30;
  if (!v33)
  {
    v55 = 0;
    v53 = v27;
    v46 = v34;
    sub_268601C34(v31, v27, v29);
    v42 = v32;
    v44 = v46;
    sub_268601C34(0, v42, v46);
    sub_268601C34(v57, v27, v29);
    sub_268601C34(0, v42, v46);
    v39 = v29;
    sub_268601C34(v57, v53, v29);
    v45 = v57;

    sub_268601C90(0, v42, v46);
    sub_268601C90(v57, v53, v29);
    v64 = v67;
    v65 = v68;
    v66 = v69;
    sub_268601D24(&v64);
    v41 = v53;
LABEL_23:
    sub_268601C90(v45, v41, v39);
    sub_268601C90(v55, v42, v44);
    goto LABEL_28;
  }

  *&v59 = v33;
  *(&v59 + 1) = v32;
  *&v60 = v34;
  *(&v60 + 1) = v58;
  v61 = v35;
  sub_268601C34(v31, v27, v29);
  sub_268601C34(v33, v32, v34);
  sub_268601C34(v57, v27, v29);
  v36 = _s20SiriOntologyProtobuf07Google_C15_MessageOptionsV2eeoiySbAC_ACtFZ_0(&v67, &v59);
  v62[0] = v59;
  v62[1] = v60;
  v63 = v61;
  sub_268601D24(v62);
  v64 = v67;
  v65 = v68;
  v66 = v69;
  sub_268601D24(&v64);
  sub_268601C90(v57, v27, v29);
  if ((v36 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_25:
  swift_beginAccess();
  v47 = *(a1 + 120);
  swift_beginAccess();
  v48 = *(a2 + 120);

  v49 = sub_268611F48(v47, v48);

  if ((v49 & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  swift_beginAccess();
  v50 = *(a1 + 128);
  swift_beginAccess();
  v51 = sub_26860EBDC(v50, *(a2 + 128));

  return v51 & 1;
}

uint64_t sub_2685F6BB0@<X0>(void *a1@<X8>)
{
  if (qword_28028BC60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C458;
  v2 = qword_28028C460;
  v3 = unk_28028C468;
  *a1 = qword_28028C450;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_DescriptorProto.ExtensionRange._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC78 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C490;
  v2 = qword_28028C498;
  v3 = unk_28028C4A0;
  *a1 = qword_28028C488;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685F6DD8(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 20) = v4;
  swift_beginAccess();
  v5 = *(a1 + 24);
  LOBYTE(v3) = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v5;
  *(v1 + 28) = v3;
  swift_beginAccess();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  sub_268601C34(v6, v7, v8);

  swift_beginAccess();
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 48) = v8;
  *(v1 + 56) = v9;
  sub_268601C90(v10, v11, v12);
  return v1;
}

uint64_t sub_2685F6F20()
{
  v1 = v0[7];
  sub_268601C90(v0[4], v0[5], v0[6]);

  return swift_deallocClassInstance();
}

uint64_t sub_2685F6FB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4[2];
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        v13 = v4;
        swift_beginAccess();
        v14 = a4[10];
        v15 = a1 + 24;
LABEL_13:
        v4 = v13;
        v14(v15, a3, a4);
LABEL_5:
        swift_endAccess();
        goto LABEL_6;
      }

      if (result == 1)
      {
        v13 = v4;
        swift_beginAccess();
        v14 = a4[10];
        v15 = a1 + 16;
        goto LABEL_13;
      }

LABEL_6:
      result = v8(a3, a4);
    }

    swift_beginAccess();
    v11 = a4[51];
    v12 = sub_26861489C();
    v11(a1 + 32, &type metadata for Google_Protobuf_ExtensionRangeOptions, v12, a3, a4);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_2685F7130(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if ((*(a4 + 20) & 1) == 0)
  {
    v8 = *(a4 + 16);
    MEMORY[0x26D61D8F0](1);
    MEMORY[0x26D61D920](v8);
  }

  swift_beginAccess();
  if ((*(a4 + 28) & 1) == 0)
  {
    v9 = *(a4 + 24);
    MEMORY[0x26D61D8F0](2);
    MEMORY[0x26D61D920](v9);
  }

  result = swift_beginAccess();
  v11 = *(a4 + 32);
  if (v11)
  {
    v13 = *(a4 + 48);
    v12 = *(a4 + 56);
    v14 = *(a4 + 40);
    MEMORY[0x26D61D8F0](3);

    sub_2685BA80C(v14, v13);

    sub_2685DCFC0(a1, v11, v14, v13, v12);
    result = sub_268601C90(v11, v14, v13);
  }

  v15 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v15 != 2)
    {
      return result;
    }

    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
LABEL_14:
    if (v16 == v17)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v15)
  {
    v16 = a2;
    v17 = a2 >> 32;
    goto LABEL_14;
  }

  if ((a3 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_2685F72D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  if ((*(a1 + 20) & 1) == 0)
  {
    result = (*(a4 + 24))(*(a1 + 16), 1, a3, a4);
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if ((*(a1 + 28) & 1) != 0 || (result = (*(a4 + 24))(*(a1 + 24), 2, a3, a4), !v5))
  {
    result = swift_beginAccess();
    if (*(a1 + 32))
    {
      v10 = *(a1 + 56);
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = v10;
      v11 = *(a4 + 136);
      v12 = sub_26861489C();
      return v11(&v13, 3, &type metadata for Google_Protobuf_ExtensionRangeOptions, v12, a3, a4);
    }
  }

  return result;
}

BOOL sub_2685F7450(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  swift_beginAccess();
  v6 = *(a2 + 20);
  if (v5)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v4 != *(a2 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v7 = *(a1 + 24);
  v8 = *(a1 + 28);
  swift_beginAccess();
  v9 = *(a2 + 28);
  if (v8)
  {
    if (*(a2 + 28))
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v7 != *(a2 + 24))
  {
    v9 = 1;
  }

  if (v9)
  {
    return 0;
  }

LABEL_13:
  swift_beginAccess();
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  swift_beginAccess();
  v15 = *(a2 + 32);
  v14 = *(a2 + 40);
  v17 = *(a2 + 48);
  v16 = *(a2 + 56);
  if (v11)
  {
    v28 = v11;
    v29 = v10;
    v30 = v13;
    v31 = v12;
    if (v15)
    {
      v24 = v15;
      v25 = v14;
      v26 = v17;
      v27 = v16;
      sub_268601C34(v11, v10, v13);
      sub_268601C34(v15, v14, v17);
      sub_268601C34(v11, v10, v13);
      v18 = sub_2686140B0(&v28, &v24);
      v19 = v25;
      v20 = v26;

      sub_2685B593C(v19, v20);

      v21 = v29;
      v22 = v30;

      sub_2685B593C(v21, v22);

      sub_268601C90(v11, v10, v13);
      return (v18 & 1) != 0;
    }

    sub_268601C34(v11, v10, v13);
    sub_268601C34(0, v14, v17);
    sub_268601C34(v11, v10, v13);

    sub_2685B593C(v10, v13);

LABEL_20:
    sub_268601C90(v11, v10, v13);
    sub_268601C90(v15, v14, v17);
    return 0;
  }

  sub_268601C34(0, v10, v13);
  if (v15)
  {
    sub_268601C34(v15, v14, v17);
    goto LABEL_20;
  }

  sub_268601C34(0, v14, v17);
  sub_268601C90(0, v10, v13);
  return 1;
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v14 = v19;
  v15 = v20;
  swift_beginAccess();
  if ((*(v3 + 20) & 1) == 0)
  {
    v4 = *(v3 + 16);
    MEMORY[0x26D61D8F0](1);
    MEMORY[0x26D61D920](v4);
  }

  swift_beginAccess();
  if ((*(v3 + 28) & 1) == 0)
  {
    v5 = *(v3 + 24);
    MEMORY[0x26D61D8F0](2);
    MEMORY[0x26D61D920](v5);
  }

  swift_beginAccess();
  v6 = *(v3 + 32);
  if (v6)
  {
    v8 = *(v3 + 48);
    v7 = *(v3 + 56);
    v9 = *(v3 + 40);
    MEMORY[0x26D61D8F0](3);

    sub_2685BA80C(v9, v8);

    sub_2685DCFC0(&v14, v6, v9, v8, v7);
    sub_268601C90(v6, v9, v8);
  }

  v10 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = *(v1 + 16);
    v12 = *(v1 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v11 = v1;
    v12 = v1 >> 32;
  }

  if (v11 != v12)
  {
LABEL_15:
    sub_268689844();
  }

LABEL_16:
  v21 = v16;
  v22 = v17;
  v23 = v18;
  v19 = v14;
  v20 = v15;
  return sub_268689EF4();
}

uint64_t sub_2685F795C@<X0>(void *a1@<X8>)
{
  if (qword_28028BC78 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C490;
  v2 = qword_28028C498;
  v3 = unk_28028C4A0;
  *a1 = qword_28028C488;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685F7AAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x26D61D4B0](a2, a3);
  *a4 = 0xD00000000000001FLL;
  *a5 = 0x80000002686948D0;
  return result;
}

uint64_t static Google_Protobuf_DescriptorProto.ReservedRange._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C4C0;
  v2 = qword_28028C4C8;
  v3 = unk_28028C4D0;
  *a1 = qword_28028C4B8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685F7C68@<X0>(void *a1@<X8>)
{
  if (qword_28028BC88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C4C0;
  v2 = qword_28028C4C8;
  v3 = unk_28028C4D0;
  *a1 = qword_28028C4B8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_ExtensionRangeOptions._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC90 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C4E0;
  v2 = qword_28028C4E8;
  v3 = unk_28028C4F0;
  *a1 = qword_28028C4D8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685F7E38()
{
  v1 = *v0;
  v10[0] = v0[3];
  if ((ExtensionFieldValueSet.isInitialized.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_2685F0E50(v1);
  result = v2 + 32;
  v4 = -*(v2 + 16);
  v5 = -1;
  while (1)
  {
    if (v4 + v5 == -1)
    {

      return 1;
    }

    if (++v5 >= *(v2 + 16))
    {
      break;
    }

    v6 = result + 40;
    sub_2685B1724(result, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = (*(v8 + 32))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = v6;
    if ((v9 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2685F7F4C@<X0>(void *a1@<X8>)
{
  if (qword_28028BC90 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C4E0;
  v2 = qword_28028C4E8;
  v3 = unk_28028C4F0;
  *a1 = qword_28028C4D8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_FieldDescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC98 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C500;
  v2 = qword_28028C508;
  v3 = unk_28028C510;
  *a1 = qword_28028C4F8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

double sub_2685F80C4()
{
  type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 36) = 1;
  *(v0 + 37) = 4611;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 92) = 1;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 142) = 0;
  qword_28028C518 = v0;
  return result;
}

uint64_t sub_2685F8130(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 36) = 1;
  *(v1 + 37) = 4611;
  *(v1 + 88) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 92) = 1;
  *(v1 + 128) = 0u;
  *(v1 + 142) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 96) = 0u;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  swift_beginAccess();
  v5 = *(a1 + 32);
  LOBYTE(v4) = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 36) = v4;
  swift_beginAccess();
  v6 = *(a1 + 37);
  swift_beginAccess();
  *(v1 + 37) = v6;
  swift_beginAccess();
  v7 = *(a1 + 38);
  swift_beginAccess();
  *(v1 + 38) = v7;
  swift_beginAccess();
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v9;
  *(v1 + 48) = v8;
  swift_beginAccess();
  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  swift_beginAccess();
  v12 = *(v1 + 64);
  *(v1 + 56) = v11;
  *(v1 + 64) = v10;

  swift_beginAccess();
  v14 = *(a1 + 72);
  v13 = *(a1 + 80);
  swift_beginAccess();
  v15 = *(v1 + 80);
  *(v1 + 72) = v14;
  *(v1 + 80) = v13;

  swift_beginAccess();
  LODWORD(v13) = *(a1 + 88);
  LOBYTE(v15) = *(a1 + 92);
  swift_beginAccess();
  *(v1 + 88) = v13;
  *(v1 + 92) = v15;
  swift_beginAccess();
  v17 = *(a1 + 96);
  v16 = *(a1 + 104);
  swift_beginAccess();
  v18 = *(v1 + 104);
  *(v1 + 96) = v17;
  *(v1 + 104) = v16;

  swift_beginAccess();
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  v21 = *(a1 + 128);
  v22 = *(a1 + 136);
  LOWORD(v14) = *(a1 + 148);
  LODWORD(v11) = *(a1 + 144);
  sub_268601C34(v19, v20, v21);

  swift_beginAccess();
  v23 = *(v1 + 112);
  v24 = *(v1 + 120);
  v25 = *(v1 + 128);
  v26 = *(v1 + 136);
  v27 = *(v1 + 144);
  v28 = *(v1 + 148);
  *(v1 + 112) = v19;
  *(v1 + 120) = v20;
  *(v1 + 128) = v21;
  *(v1 + 136) = v22;
  *(v1 + 144) = v11;
  *(v1 + 148) = v14;
  sub_268601C90(v23, v24, v25);
  return v1;
}

uint64_t sub_2685F84A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 104);

  v6 = *(v0 + 136);
  v7 = *(v0 + 148);
  v8 = *(v0 + 144);
  sub_268601C90(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t Google_Protobuf_FieldDescriptorProto.isInitialized.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 112))
  {
    v6 = *(v1 + 112);
    v7 = *(v1 + 120);
    v8 = *(v1 + 136);
    v2.i64[0] = 0xFFFFFFFFFFFFLL;
    v2.i64[1] = 0xFFFFFFFFFFFFLL;
    v3 = vandq_s8(vdupq_n_s64(*(v1 + 144) | (*(v1 + 148) << 32)), v2);
    v4 = Google_Protobuf_FieldOptions.isInitialized.getter();
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t Google_Protobuf_FieldOptions.isInitialized.getter()
{
  v1 = *v0;
  v10[0] = v0[3];
  if ((ExtensionFieldValueSet.isInitialized.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_2685F0E50(v1);
  result = v2 + 32;
  v4 = -*(v2 + 16);
  v5 = -1;
  while (1)
  {
    if (v4 + v5 == -1)
    {

      return 1;
    }

    if (++v5 >= *(v2 + 16))
    {
      break;
    }

    v6 = result + 40;
    sub_2685B1724(result, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = (*(v8 + 32))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = v6;
    if ((v9 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2685F8734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          v11 = v4;
          if (result == 6)
          {
            swift_beginAccess();
            v12 = *(a4 + 344);
            v13 = a1 + 40;
          }

          else
          {
            swift_beginAccess();
            v12 = *(a4 + 344);
            v13 = a1 + 72;
          }

LABEL_5:
          v4 = v11;
          v12(v13, a3, a4);
LABEL_6:
          swift_endAccess();
          goto LABEL_7;
        }

        switch(result)
        {
          case 8:
            swift_beginAccess();
            v18 = *(a4 + 408);
            v19 = sub_268614998();
            v18(a1 + 112, &type metadata for Google_Protobuf_FieldOptions, v19, a3, a4);
            goto LABEL_6;
          case 9:
            swift_beginAccess();
            (*(a4 + 80))(a1 + 88, a3, a4);
            goto LABEL_6;
          case 10:
            v11 = v4;
            swift_beginAccess();
            v12 = *(a4 + 344);
            v13 = a1 + 96;
            goto LABEL_5;
        }
      }

      else
      {
        if (result > 2)
        {
          if (result == 3)
          {
            swift_beginAccess();
            (*(a4 + 80))(a1 + 32, a3, a4);
          }

          else
          {
            if (result == 4)
            {
              swift_beginAccess();
              v14 = *(a4 + 392);
              v15 = sub_268619150();
              v16 = a1 + 37;
              v17 = &type metadata for Google_Protobuf_FieldDescriptorProto.Label;
            }

            else
            {
              swift_beginAccess();
              v14 = *(a4 + 392);
              v15 = sub_2686190FC();
              v16 = a1 + 38;
              v17 = &type metadata for Google_Protobuf_FieldDescriptorProto.TypeEnum;
            }

            v14(v16, v17, v15, a3, a4);
          }

          goto LABEL_6;
        }

        if (result == 1)
        {
          v11 = v4;
          swift_beginAccess();
          v12 = *(a4 + 344);
          v13 = a1 + 16;
          goto LABEL_5;
        }

        if (result == 2)
        {
          v11 = v4;
          swift_beginAccess();
          v12 = *(a4 + 344);
          v13 = a1 + 56;
          goto LABEL_5;
        }
      }

LABEL_7:
      result = v8(a3, a4);
    }
  }

  return result;
}

uint64_t sub_2685F8ADC(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  if (*(a1 + 24))
  {
    v5 = *(a1 + 16);
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (*(a1 + 64))
  {
    v6 = *(a1 + 56);
    MEMORY[0x26D61D8F0](2);

    sub_268689A24();
  }

  swift_beginAccess();
  if ((*(a1 + 36) & 1) == 0)
  {
    v7 = *(a1 + 32);
    MEMORY[0x26D61D8F0](3);
    MEMORY[0x26D61D920](v7);
  }

  swift_beginAccess();
  v8 = *(a1 + 37);
  if (v8 != 3)
  {
    MEMORY[0x26D61D8F0](4);
    MEMORY[0x26D61D8F0](v8 + 1);
  }

  swift_beginAccess();
  v9 = *(a1 + 38);
  if (v9 != 18)
  {
    MEMORY[0x26D61D8F0](5);
    MEMORY[0x26D61D8F0](v9 + 1);
  }

  swift_beginAccess();
  if (*(a1 + 48))
  {
    v10 = *(a1 + 40);
    MEMORY[0x26D61D8F0](6);

    sub_268689A24();
  }

  swift_beginAccess();
  if (*(a1 + 80))
  {
    v11 = *(a1 + 72);
    MEMORY[0x26D61D8F0](7);

    sub_268689A24();
  }

  swift_beginAccess();
  v12 = *(a1 + 112);
  if (v12)
  {
    v13 = *(a1 + 120);
    v14 = *(a1 + 128);
    v15 = *(a1 + 136);
    v16 = *(a1 + 144) | (*(a1 + 148) << 32);
    v17.i64[0] = 0xFFFFFFFFFFFFLL;
    v17.i64[1] = 0xFFFFFFFFFFFFLL;
    v18 = vandq_s8(vdupq_n_s64(v16), v17);
    v19 = vshlq_u64(v18, xmmword_26868BD80);
    v36 = *(a1 + 112);
    v37 = v13;
    v38 = v14;
    v39 = v15;
    v40 = v16;
    *v18.i8 = vmovn_s64(vshlq_u64(v18, xmmword_26868BD90));
    *v19.i8 = vmovn_s64(v19);
    v19.i16[1] = v19.i16[2];
    v19.i16[2] = v18.i16[0];
    v19.i16[3] = v18.i16[2];
    v41 = vmovn_s16(v19).u32[0];
    v42 = BYTE5(v16);
    MEMORY[0x26D61D8F0](8);
    v20 = a2[3];
    v30 = a2[2];
    v31 = v20;
    v32 = *(a2 + 8);
    v33[0] = v12;
    v21 = a2[1];
    v28 = *a2;
    v29 = v21;
    v33[1] = v13;
    v33[2] = v14;
    v33[3] = v15;
    v35 = WORD2(v16);
    v34 = v16;
    sub_268601D9C(v33, v27);
    sub_268605F78(&v28);
    if (v2)
    {
      MEMORY[0x26D61DC90](v2);
    }

    sub_268601C90(v12, v13, v14);
    v22 = v31;
    a2[2] = v30;
    a2[3] = v22;
    *(a2 + 8) = v32;
    v23 = v29;
    *a2 = v28;
    a2[1] = v23;
  }

  swift_beginAccess();
  if ((*(a1 + 92) & 1) == 0)
  {
    v24 = *(a1 + 88);
    MEMORY[0x26D61D8F0](9);
    MEMORY[0x26D61D920](v24);
  }

  result = swift_beginAccess();
  if (*(a1 + 104))
  {
    v26 = *(a1 + 96);
    MEMORY[0x26D61D8F0](10);

    sub_268689A24();
  }

  return result;
}

uint64_t sub_2685F8EA0(uint64_t a1, char **a2)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_2685B43A4(v6, v5);

    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
      *a2 = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      *a2 = v9;
    }

    *(v9 + 2) = v12 + 1;
    v9[v12 + 32] = 10;
  }

  swift_beginAccess();
  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);

    sub_2685B301C(2);
    sub_2685B403C(": ", 2, v16);
    sub_2685B43A4(v14, v13);

    v17 = *a2;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v17;
    if ((v18 & 1) == 0)
    {
      v17 = sub_2685B3F48(0, *(v17 + 2) + 1, 1, v17);
      *a2 = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_2685B3F48((v19 > 1), v20 + 1, 1, v17);
      *a2 = v17;
    }

    *(v17 + 2) = v20 + 1;
    v17[v20 + 32] = 10;
  }

  swift_beginAccess();
  if ((*(a1 + 36) & 1) != 0 || (result = sub_2686440C0(*(a1 + 32), 3), !v2))
  {
    swift_beginAccess();
    v22 = *(a1 + 37);
    if (v22 != 3)
    {
      sub_2685B301C(4);
      sub_2685B403C(": ", 2, v23);
      sub_2686714F4(v22);
      v24 = *a2;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v24;
      if ((v25 & 1) == 0)
      {
        v24 = sub_2685B3F48(0, *(v24 + 2) + 1, 1, v24);
        *a2 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_2685B3F48((v26 > 1), v27 + 1, 1, v24);
        *a2 = v24;
      }

      *(v24 + 2) = v27 + 1;
      v24[v27 + 32] = 10;
    }

    swift_beginAccess();
    v28 = *(a1 + 38);
    if (v28 != 18)
    {
      sub_2685B301C(5);
      sub_2685B403C(": ", 2, v29);
      sub_2686714D0(v28);
      v30 = *a2;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v30;
      if ((v31 & 1) == 0)
      {
        v30 = sub_2685B3F48(0, *(v30 + 2) + 1, 1, v30);
        *a2 = v30;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        v30 = sub_2685B3F48((v32 > 1), v33 + 1, 1, v30);
        *a2 = v30;
      }

      *(v30 + 2) = v33 + 1;
      v30[v33 + 32] = 10;
    }

    swift_beginAccess();
    v34 = *(a1 + 48);
    if (v34)
    {
      v35 = *(a1 + 40);
      v36 = *(a1 + 48);

      sub_2685B301C(6);
      sub_2685B403C(": ", 2, v37);
      sub_2685B43A4(v35, v34);

      v38 = *a2;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v38;
      if ((v39 & 1) == 0)
      {
        v38 = sub_2685B3F48(0, *(v38 + 2) + 1, 1, v38);
        *a2 = v38;
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        v38 = sub_2685B3F48((v40 > 1), v41 + 1, 1, v38);
        *a2 = v38;
      }

      *(v38 + 2) = v41 + 1;
      v38[v41 + 32] = 10;
    }

    swift_beginAccess();
    v42 = *(a1 + 80);
    if (v42)
    {
      v43 = *(a1 + 72);
      v44 = *(a1 + 80);

      sub_2685B301C(7);
      sub_2685B403C(": ", 2, v45);
      sub_2685B43A4(v43, v42);

      v46 = *a2;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v46;
      if ((v47 & 1) == 0)
      {
        v46 = sub_2685B3F48(0, *(v46 + 2) + 1, 1, v46);
        *a2 = v46;
      }

      v49 = *(v46 + 2);
      v48 = *(v46 + 3);
      if (v49 >= v48 >> 1)
      {
        v46 = sub_2685B3F48((v48 > 1), v49 + 1, 1, v46);
        *a2 = v46;
      }

      *(v46 + 2) = v49 + 1;
      v46[v49 + 32] = 10;
    }

    swift_beginAccess();
    v50 = *(a1 + 112);
    if (!v50)
    {
      goto LABEL_51;
    }

    v51 = *(a1 + 148);
    v52 = *(a1 + 144);
    v54 = *(a1 + 128);
    v53 = *(a1 + 136);
    v55 = *(a1 + 120);
    v69[0] = *(a1 + 112);
    v69[1] = v55;
    v69[2] = v54;
    v69[3] = v53;
    v70 = v52;
    v56.i64[0] = 0xFFFFFFFFFFFFLL;
    v56.i64[1] = 0xFFFFFFFFFFFFLL;
    v57 = vandq_s8(vdupq_n_s64(v52 | (v51 << 32)), v56);
    v58 = vshlq_u64(v57, xmmword_26868BD80);
    *v57.i8 = vmovn_s64(vshlq_u64(v57, xmmword_26868BD90));
    *v58.i8 = vmovn_s64(v58);
    v58.i16[1] = v58.i16[2];
    v58.i16[2] = v57.i16[0];
    v58.i16[3] = v57.i16[2];
    v71 = vmovn_s16(v58).u32[0];
    v72 = BYTE1(v51);
    v66[0] = v50;
    v66[1] = v55;
    v66[2] = v54;
    v66[3] = v53;
    v68 = v51;
    v67 = v52;
    sub_268601D9C(v66, v65);
    sub_268672760(v69, 8);
    result = sub_268601C90(v50, v55, v54);
    if (!v2)
    {
LABEL_51:
      swift_beginAccess();
      if ((*(a1 + 92) & 1) != 0 || (result = sub_2686440C0(*(a1 + 88), 9), !v2))
      {
        result = swift_beginAccess();
        v59 = *(a1 + 104);
        if (v59)
        {
          v60 = *(a1 + 96);

          sub_2685B301C(10);
          sub_2685B403C(": ", 2, v61);
          sub_2685B43A4(v60, v59);

          v62 = *a2;
          result = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v62;
          if ((result & 1) == 0)
          {
            result = sub_2685B3F48(0, *(v62 + 16) + 1, 1, v62);
            v62 = result;
            *a2 = result;
          }

          v64 = *(v62 + 16);
          v63 = *(v62 + 24);
          if (v64 >= v63 >> 1)
          {
            result = sub_2685B3F48((v63 > 1), v64 + 1, 1, v62);
            v62 = result;
            *a2 = result;
          }

          *(v62 + 16) = v64 + 1;
          *(v62 + v64 + 32) = 10;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F95BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = *(a1 + 16);
    v11 = *(a4 + 112);
    v12 = *(a1 + 24);

    v11(v10, v9, 1, a3, a4);
    if (v5)
    {
    }
  }

  swift_beginAccess();
  v14 = *(a1 + 64);
  if (!v14 || (v15 = *(a1 + 56), v16 = *(a4 + 112), v17 = *(a1 + 64), , v16(v15, v14, 2, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    if ((*(a1 + 36) & 1) != 0 || (result = (*(a4 + 24))(*(a1 + 32), 3, a3, a4), !v5))
    {
      swift_beginAccess();
      if (*(a1 + 37) == 3 || (LOBYTE(v41) = *(a1 + 37), v18 = *(a4 + 128), v19 = sub_268619150(), result = v18(&v41, 4, &type metadata for Google_Protobuf_FieldDescriptorProto.Label, v19, a3, a4), !v5))
      {
        swift_beginAccess();
        if (*(a1 + 38) == 18 || (LOBYTE(v41) = *(a1 + 38), v20 = *(a4 + 128), v21 = sub_2686190FC(), result = v20(&v41, 5, &type metadata for Google_Protobuf_FieldDescriptorProto.TypeEnum, v21, a3, a4), !v5))
        {
          swift_beginAccess();
          v22 = *(a1 + 48);
          if (!v22 || (v23 = *(a1 + 40), v24 = *(a4 + 112), v25 = *(a1 + 48), , v24(v23, v22, 6, a3, a4), result = , !v5))
          {
            swift_beginAccess();
            v26 = *(a1 + 80);
            if (!v26 || (v27 = *(a1 + 72), v28 = *(a4 + 112), v29 = *(a1 + 80), , v28(v27, v26, 7, a3, a4), result = , !v5))
            {
              swift_beginAccess();
              if (!*(a1 + 112))
              {
                goto LABEL_25;
              }

              v30 = *(a1 + 148);
              v31 = *(a1 + 144);
              v32 = *(a1 + 136);
              v41 = *(a1 + 112);
              v42 = *(a1 + 120);
              v43 = v32;
              v44 = v31;
              v33.i64[0] = 0xFFFFFFFFFFFFLL;
              v33.i64[1] = 0xFFFFFFFFFFFFLL;
              v34 = vandq_s8(vdupq_n_s64(v31 | (v30 << 32)), v33);
              v35 = vshlq_u64(v34, xmmword_26868BD80);
              *v34.i8 = vmovn_s64(vshlq_u64(v34, xmmword_26868BD90));
              *v35.i8 = vmovn_s64(v35);
              v35.i16[1] = v35.i16[2];
              v35.i16[2] = v34.i16[0];
              v35.i16[3] = v34.i16[2];
              v45 = vmovn_s16(v35).u32[0];
              v46 = BYTE1(v30);
              v36 = *(a4 + 136);
              v37 = sub_268614998();
              result = v36(&v41, 8, &type metadata for Google_Protobuf_FieldOptions, v37, a3, a4);
              if (!v5)
              {
LABEL_25:
                swift_beginAccess();
                if ((*(a1 + 92) & 1) != 0 || (result = (*(a4 + 24))(*(a1 + 88), 9, a3, a4), !v5))
                {
                  result = swift_beginAccess();
                  v38 = *(a1 + 104);
                  if (v38)
                  {
                    v39 = *(a1 + 96);
                    v40 = *(a4 + 112);

                    v40(v39, v38, 10, a3, a4);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685F9A70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_62;
    }

    v7 = v4 == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v6)
  {
    goto LABEL_62;
  }

  swift_beginAccess();
  v8 = *(a1 + 32);
  v9 = *(a1 + 36);
  swift_beginAccess();
  v10 = *(a2 + 36);
  if (v9)
  {
    if (!*(a2 + 36))
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (v8 != *(a2 + 32))
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_62;
    }
  }

  swift_beginAccess();
  v11 = *(a1 + 37);
  swift_beginAccess();
  v12 = *(a2 + 37);
  if (v11 == 3)
  {
    if (v12 != 3)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v13 = 0;
    if (v12 == 3 || v11 != v12)
    {
      return v13 & 1;
    }
  }

  swift_beginAccess();
  v14 = *(a1 + 38);
  swift_beginAccess();
  v15 = *(a2 + 38);
  if (v14 == 18)
  {
    if (v15 != 18)
    {
      goto LABEL_62;
    }

    goto LABEL_26;
  }

  v13 = 0;
  if (v15 != 18 && v14 == v15)
  {
LABEL_26:
    swift_beginAccess();
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    swift_beginAccess();
    v18 = *(a2 + 48);
    if (v17)
    {
      if (!v18 || (v16 != *(a2 + 40) || v17 != v18) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (v18)
    {
      goto LABEL_62;
    }

    swift_beginAccess();
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    swift_beginAccess();
    v21 = *(a2 + 64);
    if (v20)
    {
      if (!v21 || (v19 != *(a2 + 56) || v20 != v21) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (v21)
    {
      goto LABEL_62;
    }

    swift_beginAccess();
    v22 = *(a1 + 72);
    v23 = *(a1 + 80);
    swift_beginAccess();
    v24 = *(a2 + 80);
    if (v23)
    {
      if (!v24 || (v22 != *(a2 + 72) || v23 != v24) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (v24)
    {
      goto LABEL_62;
    }

    swift_beginAccess();
    v25 = *(a1 + 88);
    v26 = *(a1 + 92);
    swift_beginAccess();
    v27 = *(a2 + 92);
    if (v26)
    {
      if (!*(a2 + 92))
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v25 != *(a2 + 88))
      {
        v27 = 1;
      }

      if (v27)
      {
        goto LABEL_62;
      }
    }

    swift_beginAccess();
    v28 = *(a1 + 96);
    v29 = *(a1 + 104);
    swift_beginAccess();
    v30 = *(a2 + 104);
    if (v29)
    {
      if (!v30 || (v28 != *(a2 + 96) || v29 != v30) && (sub_268689E14() & 1) == 0)
      {
        goto LABEL_62;
      }

LABEL_58:
      swift_beginAccess();
      v32 = *(a1 + 112);
      v31 = *(a1 + 120);
      v34 = *(a1 + 128);
      v33 = *(a1 + 136);
      v35 = *(a1 + 144) | (*(a1 + 148) << 32);
      swift_beginAccess();
      v37 = *(a2 + 112);
      v36 = *(a2 + 120);
      v39 = *(a2 + 128);
      v38 = *(a2 + 136);
      v40 = *(a2 + 144) | (*(a2 + 148) << 32);
      if (v32)
      {
        *&v48 = v32;
        *(&v48 + 1) = v31;
        *v49 = v34;
        *&v49[8] = v33;
        *&v49[16] = v35;
        *&v49[20] = WORD2(v35);
        if (v37)
        {
          *&v42 = v37;
          *(&v42 + 1) = v36;
          *v43 = v39;
          *&v43[8] = v38;
          *&v43[20] = WORD2(v40);
          *&v43[16] = v40;
          sub_268601C34(v32, v31, v34);
          sub_268601C34(v37, v36, v39);
          sub_268601C34(v32, v31, v34);
          v13 = _s20SiriOntologyProtobuf07Google_C13_FieldOptionsV2eeoiySbAC_ACtFZ_0(&v48, &v42);
          v44 = v42;
          v45[0] = *v43;
          *(v45 + 14) = *&v43[14];
          sub_268601DD4(&v44);
          v46 = v48;
          *v47 = *v49;
          *&v47[14] = *&v49[14];
          sub_268601DD4(&v46);
          sub_268601C90(v32, v31, v34);
          return v13 & 1;
        }

        v46 = v48;
        *v47 = *v49;
        *&v47[14] = *&v49[14];
        sub_268601C34(v32, v31, v34);
        sub_268601C34(0, v36, v39);
        sub_268601C34(v32, v31, v34);
        sub_268601DD4(&v46);
      }

      else
      {
        sub_268601C34(0, v31, v34);
        if (!v37)
        {
          sub_268601C34(0, v36, v39);
          sub_268601C90(0, v31, v34);
          v13 = 1;
          return v13 & 1;
        }

        sub_268601C34(v37, v36, v39);
      }

      sub_268601C90(v32, v31, v34);
      sub_268601C90(v37, v36, v39);
      v13 = 0;
      return v13 & 1;
    }

    if (!v30)
    {
      goto LABEL_58;
    }

LABEL_62:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_2685FA0AC()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 112))
  {
    v6 = *(v1 + 112);
    v7 = *(v1 + 120);
    v8 = *(v1 + 136);
    v2.i64[0] = 0xFFFFFFFFFFFFLL;
    v2.i64[1] = 0xFFFFFFFFFFFFLL;
    v3 = vandq_s8(vdupq_n_s64(*(v1 + 144) | (*(v1 + 148) << 32)), v2);
    v4 = Google_Protobuf_FieldOptions.isInitialized.getter();
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_2685FA1A8@<X0>(void *a1@<X8>)
{
  if (qword_28028BC98 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C500;
  v2 = qword_28028C508;
  v3 = unk_28028C510;
  *a1 = qword_28028C4F8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_FieldDescriptorProto.TypeEnum._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCA8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C528;
  v2 = qword_28028C530;
  v3 = unk_28028C538;
  *a1 = qword_28028C520;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FA378@<X0>(void *a1@<X8>)
{
  if (qword_28028BCA8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C528;
  v2 = qword_28028C530;
  v3 = unk_28028C538;
  *a1 = qword_28028C520;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_FieldDescriptorProto.Label._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCB0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C548;
  v2 = qword_28028C550;
  v3 = unk_28028C558;
  *a1 = qword_28028C540;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FA4C4@<X0>(void *a1@<X8>)
{
  if (qword_28028BCB0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_28028C548;
  v2 = qword_28028C550;
  v3 = unk_28028C558;
  *a1 = qword_28028C540;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_OneofDescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C568;
  v2 = qword_28028C570;
  v3 = unk_28028C578;
  *a1 = qword_28028C560;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FA62C(void *a1)
{
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  swift_beginAccess();
  v4 = a1[2];
  v3 = a1[3];
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  swift_beginAccess();
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];

  sub_268601C34(v5, v6, v7);

  swift_beginAccess();
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  sub_268601C90(v9, v10, v11);
  return v1;
}

uint64_t sub_2685FA72C()
{
  v1 = v0[3];

  v2 = v0[7];
  sub_268601C90(v0[4], v0[5], v0[6]);

  return swift_deallocClassInstance();
}

uint64_t _s20SiriOntologyProtobuf07Google_C16_DescriptorProtoV14ExtensionRangeV13isInitializedSbvg_0()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = v1[4];
  if (!v2)
  {
    return 1;
  }

  v4 = v1[5];
  v3 = v1[6];
  v17[0] = v1[7];

  sub_2685BA80C(v4, v3);

  if (ExtensionFieldValueSet.isInitialized.getter())
  {
    v16 = v3;
    v5 = sub_2685F0E50(v2);
    result = v5 + 32;
    v7 = -*(v5 + 16);
    v8 = -1;
    while (1)
    {
      if (v7 + v8 == -1)
      {

        sub_268601C90(v2, v4, v16);
        return 1;
      }

      if (++v8 >= *(v5 + 16))
      {
        break;
      }

      v9 = result + 40;
      sub_2685B1724(result, v17);
      v10 = v18;
      v11 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v12 = (*(v11 + 32))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = v9;
      if ((v12 & 1) == 0)
      {

        v13 = v2;
        v14 = v4;
        v15 = v16;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = v2;
    v14 = v4;
    v15 = v3;
LABEL_9:
    sub_268601C90(v13, v14, v15);
    return 0;
  }

  return result;
}

uint64_t sub_2685FA8EC(void *a1)
{
  swift_beginAccess();
  v2 = a1[4];
  if (!v2)
  {
    return 1;
  }

  v4 = a1[5];
  v3 = a1[6];
  v17[0] = a1[7];

  sub_2685BA80C(v4, v3);

  if (ExtensionFieldValueSet.isInitialized.getter())
  {
    v16 = v3;
    v5 = sub_2685F0E50(v2);
    result = v5 + 32;
    v7 = -*(v5 + 16);
    v8 = -1;
    while (1)
    {
      if (v7 + v8 == -1)
      {

        sub_268601C90(v2, v4, v16);
        return 1;
      }

      if (++v8 >= *(v5 + 16))
      {
        break;
      }

      v9 = result + 40;
      sub_2685B1724(result, v17);
      v10 = v18;
      v11 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v12 = (*(v11 + 32))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = v9;
      if ((v12 & 1) == 0)
      {

        v13 = v2;
        v14 = v4;
        v15 = v16;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = v2;
    v14 = v4;
    v15 = v3;
LABEL_9:
    sub_268601C90(v13, v14, v15);
    return 0;
  }

  return result;
}

BOOL _s20SiriOntologyProtobuf07Google_C15_ServiceOptionsV13isInitializedSbvg_0()
{
  v1 = *v0;
  v5 = v0[3];
  if ((ExtensionFieldValueSet.isInitialized.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_2685F0E50(v1);
  v3 = _s20SiriOntologyProtobuf8InternalO17areAllInitializedySbSayAA7Message_pGFZ_0(v2);

  return v3;
}

uint64_t sub_2685FAB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        swift_beginAccess();
        (*(a4 + 344))(a1 + 16, a3, a4);
        goto LABEL_5;
      }

LABEL_6:
      result = v8(a3, a4);
    }

    swift_beginAccess();
    v11 = *(a4 + 408);
    v12 = sub_268614A94();
    v11(a1 + 32, &type metadata for Google_Protobuf_OneofOptions, v12, a3, a4);
LABEL_5:
    swift_endAccess();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_2685FAC74(__int128 *a1, uint64_t a2, unint64_t a3, void *a4)
{
  swift_beginAccess();
  if (a4[3])
  {
    v8 = a4[2];
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  result = swift_beginAccess();
  v10 = a4[4];
  if (v10)
  {
    v12 = a4[6];
    v11 = a4[7];
    v13 = a4[5];
    MEMORY[0x26D61D8F0](2);

    sub_2685BA80C(v13, v12);

    sub_2685DCFC0(a1, v10, v13, v12, v11);
    result = sub_268601C90(v10, v13, v12);
  }

  v14 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v14 != 2)
    {
      return result;
    }

    v15 = *(a2 + 16);
    v16 = *(a2 + 24);
LABEL_12:
    if (v15 == v16)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v14)
  {
    v15 = a2;
    v16 = a2 >> 32;
    goto LABEL_12;
  }

  if ((a3 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_2685FADD0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  swift_beginAccess();
  v9 = a4[3];
  if (v9)
  {
    v10 = a4[2];
    v11 = a4[3];

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v12);
    sub_2685B43A4(v10, v9);

    v13 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_2685B3F48(0, *(v13 + 2) + 1, 1, v13);
      *a1 = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_2685B3F48((v15 > 1), v16 + 1, 1, v13);
    }

    *(v13 + 2) = v16 + 1;
    v13[v16 + 32] = 10;
    *a1 = v13;
  }

  result = swift_beginAccess();
  v18 = a4[4];
  if (!v18)
  {
    goto LABEL_9;
  }

  v20 = a4[6];
  v19 = a4[7];
  v21 = a4[5];

  sub_2685BA80C(v21, v20);

  sub_268673AF4(v18, v21, v20, v19, 2);
  result = sub_268601C90(v18, v21, v20);
  if (!v4)
  {
LABEL_9:
    v22 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v22 != 2)
      {
        return result;
      }

      v23 = *(a2 + 16);
      v24 = *(a2 + 24);
    }

    else
    {
      if (!v22)
      {
        if ((a3 & 0xFF000000000000) == 0)
        {
          return result;
        }

        goto LABEL_17;
      }

      v23 = a2;
      v24 = a2 >> 32;
    }

    if (v23 == v24)
    {
      return result;
    }

LABEL_17:
    if (*(a1 + 64) == 1)
    {
      return sub_26863B108(a2, a3);
    }
  }

  return result;
}

uint64_t sub_2685FAFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (!v9 || (v10 = *(a1 + 16), v11 = *(a4 + 112), v12 = *(a1 + 24), , v11(v10, v9, 1, a3, a4), result = , !v5))
  {
    result = swift_beginAccess();
    if (*(a1 + 32))
    {
      v14 = *(a1 + 56);
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = v14;
      v15 = *(a4 + 136);
      v16 = sub_268614A94();
      return v15(&v17, 2, &type metadata for Google_Protobuf_OneofOptions, v16, a3, a4);
    }
  }

  return result;
}

BOOL sub_2685FB14C(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = v4 == a2[2] && v5 == v6;
    if (!v7 && (sub_268689E14() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  swift_beginAccess();
  v9 = a1[4];
  v8 = a1[5];
  v11 = a1[6];
  v10 = a1[7];
  swift_beginAccess();
  v13 = a2[4];
  v12 = a2[5];
  v15 = a2[6];
  v14 = a2[7];
  if (v9)
  {
    v26 = v9;
    v27 = v8;
    v28 = v11;
    v29 = v10;
    if (v13)
    {
      v22 = v13;
      v23 = v12;
      v24 = v15;
      v25 = v14;
      sub_268601C34(v9, v8, v11);
      sub_268601C34(v13, v12, v15);
      sub_268601C34(v9, v8, v11);
      v16 = sub_2686140B0(&v26, &v22);
      v17 = v23;
      v18 = v24;

      sub_2685B593C(v17, v18);

      v19 = v27;
      v20 = v28;

      sub_2685B593C(v19, v20);

      sub_268601C90(v9, v8, v11);
      return (v16 & 1) != 0;
    }

    sub_268601C34(v9, v8, v11);
    sub_268601C34(0, v12, v15);
    sub_268601C34(v9, v8, v11);

    sub_2685B593C(v8, v11);

LABEL_17:
    sub_268601C90(v9, v8, v11);
    sub_268601C90(v13, v12, v15);
    return 0;
  }

  sub_268601C34(0, v8, v11);
  if (v13)
  {
    sub_268601C34(v13, v12, v15);
    goto LABEL_17;
  }

  sub_268601C34(0, v12, v15);
  sub_268601C90(0, v8, v11);
  return 1;
}

uint64_t Google_Protobuf_OneofDescriptorProto.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_2685FAC74(&v5, v1, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

uint64_t sub_2685FB4E8@<X0>(void *a1@<X8>)
{
  if (qword_28028BCB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C568;
  v2 = qword_28028C570;
  v3 = unk_28028C578;
  *a1 = qword_28028C560;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685FB5A8(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  sub_268689E94();
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v9 = v14;
  v10 = v15;
  a3(&v9, v5, v6, v7);
  v17 = v12;
  v18 = v13;
  v15 = v10;
  v16 = v11;
  v14 = v9;
  return sub_268689EF4();
}

__n128 sub_2685FB678(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  v10 = a1[3];
  v16 = a1[2];
  v17 = v10;
  v18 = *(a1 + 8);
  v11 = a1[1];
  v14 = *a1;
  v15 = v11;
  a4(&v14, v7, v8, v9);
  v12 = v17;
  a1[2] = v16;
  a1[3] = v12;
  *(a1 + 8) = v18;
  result = v15;
  *a1 = v14;
  a1[1] = result;
  return result;
}

uint64_t sub_2685FB718(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  sub_268689E94();
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  a4(&v10, v6, v7, v8);
  v18 = v13;
  v19 = v14;
  v16 = v11;
  v17 = v12;
  v15 = v10;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_EnumDescriptorProto._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BCC0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C588;
  v2 = qword_28028C590;
  v3 = unk_28028C598;
  *a1 = qword_28028C580;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

double sub_2685FB8C8()
{
  type metadata accessor for Google_Protobuf_EnumDescriptorProto._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = v1;
  *(v0 + 88) = v1;
  qword_28028C5A0 = v0;
  return result;
}

uint64_t sub_2685FB91C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 32) = MEMORY[0x277D84F90];
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 80) = v3;
  *(v1 + 88) = v3;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  swift_beginAccess();
  v6 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v6;

  swift_beginAccess();
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  swift_beginAccess();
  v12 = *(v1 + 40);
  v13 = *(v1 + 48);
  v20 = *(v1 + 64);
  v21 = *(v1 + 56);
  *(v1 + 40) = v7;
  *(v1 + 48) = v8;
  *(v1 + 56) = v9;
  *(v1 + 64) = v10;
  v14 = *(v1 + 72);
  *(v1 + 72) = v11;
  sub_268601C34(v7, v8, v9);
  sub_268601C90(v12, v13, v21);
  swift_beginAccess();
  v15 = *(a1 + 80);
  swift_beginAccess();
  v16 = *(v1 + 80);
  *(v1 + 80) = v15;

  swift_beginAccess();
  v17 = *(a1 + 88);

  swift_beginAccess();
  v18 = *(v1 + 88);
  *(v1 + 88) = v17;

  return v1;
}

uint64_t sub_2685FBB3C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_268601C90(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_2685FBBA4(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);

  v4 = sub_2685F10F0(v3, &type metadata for Google_Protobuf_EnumValueDescriptorProto, sub_2686167FC);

  result = v4 + 32;
  v6 = -*(v4 + 16);
  v7 = -1;
  while (1)
  {
    if (v6 + v7 == -1)
    {

      swift_beginAccess();
      if (!*(a1 + 40))
      {
        return 1;
      }

      v12 = *(a1 + 72);
      v13 = *(a1 + 64);
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16 = v13;
      LOWORD(v17) = v12;
      return (Google_Protobuf_EnumOptions.isInitialized.getter() & 1) != 0;
    }

    if (++v7 >= *(v4 + 16))
    {
      break;
    }

    v8 = result + 40;
    sub_2685B1724(result, &v14);
    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(&v14, v16);
    v11 = (*(v10 + 32))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(&v14);
    result = v8;
    if ((v11 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t Google_Protobuf_EnumOptions.isInitialized.getter()
{
  v1 = *v0;
  v10[0] = v0[3];
  if ((ExtensionFieldValueSet.isInitialized.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = sub_2685F0E50(v1);
  result = v2 + 32;
  v4 = -*(v2 + 16);
  v5 = -1;
  while (1)
  {
    if (v4 + v5 == -1)
    {

      return 1;
    }

    if (++v5 >= *(v2 + 16))
    {
      break;
    }

    v6 = result + 40;
    sub_2685B1724(result, v10);
    v7 = v11;
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v9 = (*(v8 + 32))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = v6;
    if ((v9 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2685FBE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          swift_beginAccess();
          (*(a4 + 344))(a1 + 16, a3, a4);
          goto LABEL_5;
        }

        if (result == 2)
        {
          v13 = v4;
          swift_beginAccess();
          v14 = *(a4 + 416);
          v15 = sub_2686167FC();
          v16 = a1 + 32;
          v17 = &type metadata for Google_Protobuf_EnumValueDescriptorProto;
          goto LABEL_17;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            swift_beginAccess();
            v11 = *(a4 + 408);
            v12 = sub_268614AE8();
            v11(a1 + 40, &type metadata for Google_Protobuf_EnumOptions, v12, a3, a4);
            goto LABEL_5;
          case 4:
            v13 = v4;
            swift_beginAccess();
            v14 = *(a4 + 416);
            v15 = sub_268616654();
            v16 = a1 + 80;
            v17 = &type metadata for Google_Protobuf_EnumDescriptorProto.EnumReservedRange;
LABEL_17:
            v4 = v13;
            v14(v16, v17, v15, a3, a4);
LABEL_5:
            swift_endAccess();
            break;
          case 5:
            swift_beginAccess();
            (*(a4 + 352))(a1 + 88, a3, a4);
            goto LABEL_5;
        }
      }

      result = v8(a3, a4);
    }
  }

  return result;
}

uint64_t sub_2685FC0D8(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  swift_beginAccess();
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v7 = *(a1 + 32), v8 = , sub_2685DB708(v8, 2), result = , !v2))
  {
    swift_beginAccess();
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      v31 = *(a1 + 40);
      v32 = v11;
      v33 = v12;
      v34 = v13;
      v35 = v14;
      MEMORY[0x26D61D8F0](3);
      v15 = a2[3];
      v28 = a2[2];
      v29 = v15;
      v30 = *(a2 + 8);
      v16 = a2[1];
      v26 = *a2;
      v27 = v16;

      sub_2685BA80C(v11, v12);

      sub_268607480(&v26);
      if (v2)
      {
        MEMORY[0x26D61DC90](v2);
        v3 = 0;
      }

      sub_268601C90(v10, v11, v12);
      v17 = v29;
      a2[2] = v28;
      a2[3] = v17;
      *(a2 + 8) = v30;
      v18 = v27;
      *a2 = v26;
      a2[1] = v18;
    }

    swift_beginAccess();
    if (!*(*(a1 + 80) + 16) || (v19 = *(a1 + 80), v20 = , sub_2685DBBD8(v20, 4), result = , !v3))
    {
      result = swift_beginAccess();
      v21 = *(a1 + 88);
      if (*(v21 + 16))
      {
        MEMORY[0x26D61D8F0](5);
        result = MEMORY[0x26D61D8F0](*(v21 + 16));
        v22 = *(v21 + 16);
        if (v22)
        {

          v23 = (v21 + 40);
          do
          {
            v25 = *(v23 - 1);
            v24 = *v23;

            sub_268689A24();

            v23 += 2;
            --v22;
          }

          while (v22);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2685FC358(uint64_t a1, char **a2)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_2685B43A4(v6, v5);

    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
      *a2 = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      *a2 = v9;
    }

    *(v9 + 2) = v12 + 1;
    v9[v12 + 32] = 10;
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v13 = *(a1 + 32), v14 = , sub_268677154(v14, 2), result = , !v2))
  {
    swift_beginAccess();
    v16 = *(a1 + 40);
    if (!v16)
    {
      goto LABEL_11;
    }

    v18 = *(a1 + 56);
    v17 = *(a1 + 64);
    v19 = *(a1 + 48);
    v20 = *(a1 + 72);
    v24[0] = *(a1 + 40);
    v24[1] = v19;
    v24[2] = v18;
    v24[3] = v17;
    v25 = v20;

    sub_2685BA80C(v19, v18);

    sub_26867326C(v24, 3);
    result = sub_268601C90(v16, v19, v18);
    if (!v2)
    {
LABEL_11:
      swift_beginAccess();
      if (!*(*(a1 + 80) + 16) || (v21 = *(a1 + 80), v22 = , sub_268677104(v22, 4), result = , !v2))
      {
        result = swift_beginAccess();
        if (*(*(a1 + 88) + 16))
        {

          sub_2685B530C(v23, 5);
        }
      }
    }
  }

  return result;
}