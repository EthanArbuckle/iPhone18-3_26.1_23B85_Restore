uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 296;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 296;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[296 * v11] <= a4)
    {
      memmove(a4, __dst, 296 * v11);
    }

    v12 = &v4[296 * v11];
    if (v10 >= 296 && v6 > v7)
    {
LABEL_25:
      v15 = v6 - 296;
      v5 -= 296;
      v16 = v12;
      do
      {
        v12 = v16;
        v16 -= 296;
        memcpy(__dsta, v16, sizeof(__dsta));
        memcpy(v21, v6 - 296, 0x128uLL);
        outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__dsta, v19);
        outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v21, v19);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v21);
        outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(__dsta);
        if (__dsta[36] < v21[36])
        {
          if (v5 + 296 < v6 || v5 >= v6 || v5 + 296 != v6)
          {
            memmove(v5, v6 - 296, 0x128uLL);
          }

          if (v12 <= v4 || (v6 -= 296, v15 <= v7))
          {
            v6 = v15;
            goto LABEL_46;
          }

          goto LABEL_25;
        }

        if ((v5 + 296) < v12 || v5 >= v12 || v5 + 296 != v12)
        {
          memmove(v5, v16, 0x128uLL);
        }

        v5 -= 296;
      }

      while (v16 > v4);
      v12 = v16;
    }
  }

  else
  {
    if (a4 != __src || &__src[296 * v9] <= a4)
    {
      memmove(a4, __src, 296 * v9);
    }

    v12 = &v4[296 * v9];
    if (v8 >= 296 && v6 < v5)
    {
      while (1)
      {
        memcpy(__dsta, v6, sizeof(__dsta));
        memcpy(v21, v4, 0x128uLL);
        outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(__dsta, v19);
        outlined init with copy of MLS.InMemoryPersister.OutgoingEventEntry(v21, v19);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(v21);
        outlined destroy of MLS.InMemoryPersister.OutgoingEventEntry(__dsta);
        if (__dsta[36] >= v21[36])
        {
          break;
        }

        v13 = v6;
        v14 = v7 == v6;
        v6 += 296;
        if (!v14)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 296;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_44;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 296;
      if (v14)
      {
        goto LABEL_17;
      }

LABEL_16:
      memmove(v7, v13, 0x128uLL);
      goto LABEL_17;
    }

LABEL_44:
    v6 = v7;
  }

LABEL_46:
  v17 = (v12 - v4) / 296;
  if (v6 != v4 || v6 >= &v4[296 * v17])
  {
    memmove(v6, v4, 296 * v17);
  }

  return 1;
}

{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = (__dst - __src) / 112;
  v11 = a3 - __dst;
  v12 = (a3 - __dst) / 112;
  if (v10 >= v12)
  {
    if (a4 != __dst || &__dst[112 * v12] <= a4)
    {
      memmove(a4, __dst, 112 * v12);
    }

    v13 = &v5[112 * v12];
    if (v11 >= 112 && v7 > v8)
    {
      v53 = v4;
      do
      {
        v26 = v7 - 112;
        v6 -= 112;
        v27 = v13;
        while (1)
        {
          v13 = v27;
          v28 = *(v27 - 112);
          v29 = *(v27 - 80);
          v40 = *(v27 - 96);
          v41 = v29;
          v39 = v28;
          v30 = *(v27 - 64);
          v31 = *(v27 - 48);
          v32 = *(v27 - 16);
          v44 = *(v27 - 32);
          v45 = v32;
          v42 = v30;
          v43 = v31;
          v33 = *(v7 - 2);
          v50 = *(v7 - 3);
          v51 = v33;
          v52 = *(v7 - 1);
          v34 = *(v7 - 6);
          v46 = *v26;
          v47 = v34;
          v35 = *(v7 - 4);
          v48 = *(v7 - 5);
          v49 = v35;
          outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v39, v38);
          outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v46, v38);
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v46);
          outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v39);
          if (*(&v45 + 1) < *(&v52 + 1))
          {
            break;
          }

          v27 -= 112;
          if ((v6 + 112) < v13 || v6 >= v13 || v6 + 112 != v13)
          {
            memmove(v6, (v13 - 112), 0x70uLL);
          }

          v6 -= 112;
          if (v27 <= v5)
          {
            v13 -= 112;
            goto LABEL_49;
          }
        }

        if (v6 + 112 < v7 || v6 >= v7 || v6 + 112 != v7)
        {
          memmove(v6, v7 - 112, 0x70uLL);
        }

        if (v27 <= v5)
        {
          break;
        }

        v7 -= 112;
      }

      while (v26 > v8);
      v7 = v26;
    }
  }

  else
  {
    if (a4 != __src || &__src[112 * v10] <= a4)
    {
      memmove(a4, __src, 112 * v10);
    }

    v13 = &v5[112 * v10];
    if (v9 >= 112 && v7 < v6)
    {
      v53 = v4;
      while (1)
      {
        v14 = *v7;
        v15 = *(v7 + 2);
        v40 = *(v7 + 1);
        v41 = v15;
        v39 = v14;
        v16 = *(v7 + 3);
        v17 = *(v7 + 4);
        v18 = *(v7 + 6);
        v44 = *(v7 + 5);
        v45 = v18;
        v42 = v16;
        v43 = v17;
        v19 = *(v5 + 6);
        v21 = *(v5 + 3);
        v20 = *(v5 + 4);
        v51 = *(v5 + 5);
        v52 = v19;
        v49 = v21;
        v50 = v20;
        v22 = *v5;
        v23 = *(v5 + 2);
        v47 = *(v5 + 1);
        v48 = v23;
        v46 = v22;
        outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v39, v38);
        outlined init with copy of MLS.InMemoryPersister.IncomingEventEntry(&v46, v38);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v46);
        outlined destroy of MLS.InMemoryPersister.IncomingEventEntry(&v39);
        if (*(&v45 + 1) >= *(&v52 + 1))
        {
          break;
        }

        v24 = v7;
        v25 = v8 == v7;
        v7 += 112;
        if (!v25)
        {
          goto LABEL_17;
        }

LABEL_18:
        v8 += 112;
        if (v5 >= v13 || v7 >= v6)
        {
          v7 = v8;
          goto LABEL_49;
        }
      }

      v24 = v5;
      v25 = v8 == v5;
      v5 += 112;
      if (v25)
      {
        goto LABEL_18;
      }

LABEL_17:
      memmove(v8, v24, 0x70uLL);
      goto LABEL_18;
    }

    v7 = v8;
  }

LABEL_49:
  v36 = (v13 - v5) / 112;
  if (v7 != v5 || v7 >= &v5[112 * v36])
  {
    memmove(v7, v5, 112 * v36);
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  v8 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2, a3);
  if (v3)
  {

    return v4;
  }

  v48 = a3;
  if (v10)
  {
    v4 = *(v8 + 16);
LABEL_7:

    return v4;
  }

  v4 = result;
  v11 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v13 = (v8 + 16);
    v12 = *(v8 + 16);
    if (v11 == v12)
    {
      goto LABEL_7;
    }

    v36 = a1;
    v14 = 32 * result + 89;
    while (v11 < v12)
    {
      v15 = v8 + v14;
      v16 = *(v8 + v14 - 17);
      v17 = *(v8 + v14 - 9);
      v18 = *(v8 + v14);
      v19 = *(v8 + v14 - 1);
      v45[0] = *(v8 + v14 - 25);
      v45[1] = v16;
      v45[2] = v17;
      v46 = v19;
      v47 = v18;
      outlined copy of MLS.AllMember();
      v20 = v6;
      v21 = closure #6 in MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(v45, v6, v48);
      result = outlined consume of MLS.AllMember();
      if ((v21 & 1) == 0)
      {
        if (v11 != v4)
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_24;
          }

          if (v4 >= *v13)
          {
            goto LABEL_25;
          }

          if (v11 >= *v13)
          {
            goto LABEL_26;
          }

          v22 = v8 + 32 + 32 * v4;
          v40 = *(v22 + 25);
          v41 = *(v22 + 24);
          v23 = *(v15 - 25);
          v24 = *(v15 - 17);
          v43 = 32 * v4;
          v44 = *(v15 - 9);
          v25 = *(v15 - 1);
          v42 = *(v8 + v14);
          v38 = *(v22 + 8);
          v39 = *v22;
          v37 = *(v22 + 16);
          outlined copy of MLS.AllMember();
          outlined copy of MLS.AllMember();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
            v8 = result;
          }

          if (v4 >= *(v8 + 16))
          {
            goto LABEL_27;
          }

          v26 = v8 + v43;
          v27 = *(v8 + v43 + 32);
          v28 = *(v8 + v43 + 40);
          v29 = *(v8 + v43 + 48);
          *(v26 + 32) = v23;
          *(v26 + 40) = v24;
          *(v26 + 48) = v44;
          v30 = *(v8 + v43 + 56);
          *(v26 + 56) = v25;
          *(v26 + 57) = v42;
          result = outlined consume of MLS.AllMember();
          if (v11 >= *(v8 + 16))
          {
            goto LABEL_28;
          }

          v31 = (v8 + v14);
          v32 = *(v8 + v14 - 25);
          v33 = *(v8 + v14 - 17);
          v34 = *(v8 + v14 - 9);
          *(v31 - 25) = v39;
          *(v31 - 17) = v38;
          *(v31 - 9) = v37;
          v35 = *(v8 + v14 - 1);
          *(v31 - 1) = v41;
          *v31 = v40;
          result = outlined consume of MLS.AllMember();
          *v36 = v8;
        }

        ++v4;
      }

      v6 = v20;
      ++v11;
      v13 = (v8 + 16);
      v12 = *(v8 + 16);
      v14 += 32;
      if (v11 == v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  if (v4)
  {
  }

  if (v10)
  {
    v11 = *(v8 + 16);

    return v11;
  }

  v12 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v14 = (v8 + 16);
    v13 = *(v8 + 16);
    v52 = result;
    if (v12 == v13)
    {
LABEL_7:

      return v52;
    }

    v40 = a1;
    v15 = 32 * result + 89;
    while (v12 < v13)
    {
      v16 = v8 + v15;
      v17 = *(v8 + v15 - 17);
      v18 = *(v8 + v15 - 9);
      v19 = *(v8 + v15);
      v20 = *(v8 + v15 - 1);
      v49[0] = *(v8 + v15 - 25);
      v49[1] = v17;
      v49[2] = v18;
      v50 = v20;
      v51 = v19;
      outlined copy of MLS.AllMember();
      v21 = v6;
      v22 = v6;
      v23 = a4;
      v24 = closure #5 in MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(v49, v22);
      result = outlined consume of MLS.AllMember();
      if (!v24)
      {
        v25 = v52;
        if (v12 != v52)
        {
          if ((v52 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          if (v52 >= *v14)
          {
            goto LABEL_24;
          }

          if (v12 >= *v14)
          {
            goto LABEL_25;
          }

          v26 = v8 + 32 + 32 * v52;
          v44 = *(v26 + 25);
          v45 = *(v26 + 24);
          v27 = *(v16 - 25);
          v28 = *(v16 - 17);
          v47 = 32 * v52;
          v48 = *(v16 - 9);
          v29 = *(v16 - 1);
          v46 = *(v8 + v15);
          v42 = *(v26 + 8);
          v43 = *v26;
          v41 = *(v26 + 16);
          outlined copy of MLS.AllMember();
          outlined copy of MLS.AllMember();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
            v8 = result;
          }

          if (v52 >= *(v8 + 16))
          {
            goto LABEL_26;
          }

          v30 = v8 + v47;
          v31 = *(v8 + v47 + 32);
          v32 = *(v8 + v47 + 40);
          v33 = *(v8 + v47 + 48);
          *(v30 + 32) = v27;
          *(v30 + 40) = v28;
          *(v30 + 48) = v48;
          v34 = *(v8 + v47 + 56);
          *(v30 + 56) = v29;
          *(v30 + 57) = v46;
          result = outlined consume of MLS.AllMember();
          if (v12 >= *(v8 + 16))
          {
            goto LABEL_27;
          }

          v35 = (v8 + v15);
          v36 = *(v8 + v15 - 25);
          v37 = *(v8 + v15 - 17);
          v38 = *(v8 + v15 - 9);
          *(v35 - 25) = v43;
          *(v35 - 17) = v42;
          *(v35 - 9) = v41;
          v39 = *(v8 + v15 - 1);
          *(v35 - 1) = v45;
          *v35 = v44;
          result = outlined consume of MLS.AllMember();
          *v40 = v8;
          v25 = v52;
        }

        v52 = v25 + 1;
      }

      a4 = v23;
      ++v12;
      v14 = (v8 + 16);
      v13 = *(v8 + 16);
      v15 += 32;
      v6 = v21;
      if (v12 == v13)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_15i16Messaging3MLSO17lmn3C20opq17IDV_10Foundation4T4VTG5ARxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAnQIsgnndzo_Tf1nc_n04_s15i16Messaging3MLSO17lmn56C5write18swiftMLSGroupWrite16clientIdentifieryAC0J9Groupt33V_AC012UniqueClientL0VtYaKFSbAE20opQ38IDV3key_10Foundation0N0V5valuet_tXEfU_AJ010WriteGroupT0VTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    outlined init with copy of MLS.WriteGroupData(a4, v9);
    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);

    outlined destroy of MLS.WriteGroupData(a4);
    outlined destroy of MLS.WriteGroupData(a4);
    return v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v8 = a2;
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v39 = a2;
  v40 = v4;
  v41 = result;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v42 = (v10 - 1) & v10;
    v43 = v5;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = (*(v4 + 48) + 48 * v16);
    v18 = *v17;
    v19 = v17[1];
    v21 = v17[2];
    v20 = v17[3];
    v23 = v17[4];
    v22 = v17[5];
    v24 = (*(v4 + 56) + 16 * v16);
    v26 = *v24;
    v25 = v24[1];
    v27 = *(v9 + 40);
    Hasher.init(_seed:)();

    outlined copy of Data._Representation(v21, v20);
    outlined copy of Data._Representation(v26, v25);
    String.hash(into:)();
    String.hash(into:)();
    MEMORY[0x266754DE0](0);
    Data.hash(into:)();
    MEMORY[0x266754E10](v23);
    MEMORY[0x266754E10](v22);
    result = Hasher._finalize()();
    v9 = v41;
    v28 = -1 << *(v41 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v12 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v36 = (*(v41 + 48) + 48 * v31);
    *v36 = v18;
    v36[1] = v19;
    v36[2] = v21;
    v36[3] = v20;
    v36[4] = v23;
    v36[5] = v22;
    v37 = (*(v41 + 56) + 16 * v31);
    *v37 = v26;
    v37[1] = v25;
    ++*(v41 + 16);
    v5 = v43 - 1;
    if (__OFSUB__(v43, 1))
    {
      goto LABEL_32;
    }

    v8 = v39;
    v4 = v40;
    v10 = v42;
    if (v43 == 1)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v42 = (v15 - 1) & v15;
      v43 = v5;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x2667538A0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static MLS.InMemoryPersister.GroupStoreID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t specialized static MLS.InMemoryPersister.GroupEventStoreID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized static MLS.InMemoryPersister.SwiftMLSEpochStoreID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (v10 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v10 & 1) != 0))
  {
    v12 = specialized static Data.== infix(_:_:)(v2, v3, v6, v7) & (v4 == v9);
    if (v5 == v8)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for MLS.EventQueue.Event);
}

{
  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(a1, a2, a3, type metadata accessor for MLS.PersistenceQueue.QueueItem);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t specialized MLS.OutgoingEventType.storageIdentifier.getter()
{
  v1 = *(v0 + 144);
  v18[8] = *(v0 + 128);
  v18[9] = v1;
  v18[10] = *(v0 + 160);
  v19 = *(v0 + 176);
  v2 = *(v0 + 80);
  v18[4] = *(v0 + 64);
  v18[5] = v2;
  v3 = *(v0 + 112);
  v18[6] = *(v0 + 96);
  v18[7] = v3;
  v4 = *(v0 + 16);
  v18[0] = *v0;
  v18[1] = v4;
  v5 = *(v0 + 48);
  v18[2] = *(v0 + 32);
  v18[3] = v5;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v18);
  destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v18, v6);
  v7 = *(v0 + 144);
  v16[8] = *(v0 + 128);
  v16[9] = v7;
  v16[10] = *(v0 + 160);
  v17 = *(v0 + 176);
  v8 = *(v0 + 80);
  v16[4] = *(v0 + 64);
  v16[5] = v8;
  v9 = *(v0 + 112);
  v16[6] = *(v0 + 96);
  v16[7] = v9;
  v10 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v10;
  v11 = *(v0 + 48);
  v16[2] = *(v0 + 32);
  v16[3] = v11;
  v13 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v16, v12);
  result = *(v13 + 16);
  v15 = *(v13 + 24);
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  v14 = 32 * v12;
  v15 = &v13[32 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  for (i = (a1 + 57); ; i += 32)
  {
    v9 = *(i - 17);
    v10 = *(i - 9);
    v11 = *i;
    v12 = *(i - 1);
    v15[0] = *(i - 25);
    v15[1] = v9;
    v15[2] = v10;
    v16 = v12;
    v17 = v11;
    outlined copy of MLS.AllMember();
    v13 = closure #6 in MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(v15, a2, a3);
    outlined consume of MLS.AllMember();
    if (v3 || (v13 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  for (i = (a1 + 57); ; i += 32)
  {
    v7 = *(i - 17);
    v8 = *(i - 9);
    v9 = *i;
    v10 = *(i - 1);
    v13[0] = *(i - 25);
    v13[1] = v7;
    v13[2] = v8;
    v14 = v10;
    v15 = v9;
    outlined copy of MLS.AllMember();
    v11 = closure #5 in MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(v13, a2);
    outlined consume of MLS.AllMember();
    if (v2 || v11)
    {
      break;
    }

    if (v3 == ++v5)
    {
      return 0;
    }
  }

  return v5;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a3;
  v59 = 0;
  v7 = 0;
  v66[2] = *MEMORY[0x277D85DE8];
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v11)
        {
          v13 = __clz(__rbit64(v11));
          v64 = (v11 - 1) & v11;
          goto LABEL_11;
        }

        v14 = v7;
        do
        {
          v7 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

          if (v7 >= v12)
          {
            result = specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v59, v6);
            v50 = *MEMORY[0x277D85DE8];
            return result;
          }

          v15 = *(v8 + 8 * v7);
          ++v14;
        }

        while (!v15);
        v13 = __clz(__rbit64(v15));
        v64 = (v15 - 1) & v15;
LABEL_11:
        v16 = v13 | (v7 << 6);
        v17 = (*(v6 + 48) + 48 * v16);
        v18 = v17[1];
        v19 = v17[2];
        v20 = v17[3];
        v60 = v16;
        v21 = (*(v6 + 56) + 16 * v16);
        v23 = *v21;
        v22 = v21[1];

        outlined copy of Data._Representation(v19, v20);
        v62 = v23;
        v63 = v22;
        outlined copy of Data._Representation(v23, v22);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v24 = *a4;
        v25 = a4[1];
        v26 = v20 >> 62;
        v27 = v25 >> 62;
        if (v20 >> 62 == 3)
        {
          if (v19)
          {
            v28 = 0;
          }

          else
          {
            v28 = v20 == 0xC000000000000000;
          }

          v29 = 0;
          v30 = v28 && v25 >> 62 == 3;
          if (v30 && !v24 && v25 == 0xC000000000000000)
          {
            outlined consume of Data._Representation(v62, v63);

            v31 = 0;
            v32 = 0xC000000000000000;
            goto LABEL_53;
          }

LABEL_37:
          if (v27 <= 1)
          {
LABEL_38:
            if (!v27)
            {
              v36 = BYTE6(v25);
              goto LABEL_45;
            }

            LODWORD(v36) = HIDWORD(v24) - v24;
            if (!__OFSUB__(HIDWORD(v24), v24))
            {
              v36 = v36;
              goto LABEL_45;
            }

LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
          }
        }

        else if (v26 > 1)
        {
          if (v26 == 2)
          {
            v34 = *(v19 + 16);
            v33 = *(v19 + 24);
            v35 = __OFSUB__(v33, v34);
            v29 = v33 - v34;
            if (!v35)
            {
              goto LABEL_37;
            }

            goto LABEL_82;
          }

          v29 = 0;
          if (v27 <= 1)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v26)
          {
            LODWORD(v29) = HIDWORD(v19) - v19;
            if (!__OFSUB__(HIDWORD(v19), v19))
            {
              v29 = v29;
              goto LABEL_37;
            }

            goto LABEL_83;
          }

          v29 = BYTE6(v20);
          if (v27 <= 1)
          {
            goto LABEL_38;
          }
        }

        if (v27 == 2)
        {
          break;
        }

        if (!v29)
        {
          goto LABEL_52;
        }

LABEL_74:
        outlined consume of Data._Representation(v62, v63);

        outlined consume of Data._Representation(v19, v20);
        v11 = v64;
LABEL_75:
        *(a1 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
        v35 = __OFADD__(v59++, 1);
        if (v35)
        {
          goto LABEL_88;
        }
      }

      v38 = *(v24 + 16);
      v37 = *(v24 + 24);
      v35 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (v35)
      {
        goto LABEL_80;
      }

LABEL_45:
      if (v29 != v36)
      {
        goto LABEL_74;
      }

      if (v29 >= 1)
      {
        break;
      }

LABEL_52:
      outlined consume of Data._Representation(v62, v63);

      v31 = v19;
      v32 = v20;
LABEL_53:
      outlined consume of Data._Representation(v31, v32);
      v11 = v64;
    }

    if (v26 <= 1)
    {
      break;
    }

    if (v26 == 2)
    {
      v54 = *(v19 + 16);
      v55 = v5;
      v52 = *(v19 + 24);
      outlined copy of Data._Representation(v24, v25);
      v40 = __DataStorage._bytes.getter();
      v51 = v24;
      if (v40)
      {
        v41 = v40;
        v42 = __DataStorage._offset.getter();
        v43 = v54;
        if (__OFSUB__(v54, v42))
        {
          goto LABEL_86;
        }

        v44 = v54 - v42 + v41;
      }

      else
      {
        v44 = 0;
        v43 = v54;
      }

      if (__OFSUB__(v52, v43))
      {
        goto LABEL_85;
      }

      MEMORY[0x2667538A0]();
      v48 = v44;
      v24 = v51;
LABEL_69:
      closure #1 in static Data.== infix(_:_:)(v48, v24, v25, v66);
      if (v55)
      {
        goto LABEL_89;
      }

      v5 = 0;
      outlined consume of Data._Representation(v24, v25);
      outlined consume of Data._Representation(v62, v63);

      outlined consume of Data._Representation(v19, v20);
      v39 = v66[0];
LABEL_71:
      v6 = a3;
      goto LABEL_72;
    }

    memset(v66, 0, 14);
    outlined copy of Data._Representation(v24, v25);
    closure #1 in static Data.== infix(_:_:)(v66, v24, v25, &v65);
    if (v5)
    {
      goto LABEL_89;
    }

    v5 = 0;
    outlined consume of Data._Representation(v24, v25);
    outlined consume of Data._Representation(v62, v63);

    outlined consume of Data._Representation(v19, v20);
    v39 = v65;
LABEL_72:
    v11 = v64;
    if ((v39 & 1) == 0)
    {
      goto LABEL_75;
    }
  }

  if (v26)
  {
    v55 = v5;
    if (v19 >> 32 < v19)
    {
      goto LABEL_84;
    }

    outlined copy of Data._Representation(v24, v25);
    v45 = __DataStorage._bytes.getter();
    if (v45)
    {
      v53 = v45;
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v19, v46))
      {
        goto LABEL_87;
      }

      v47 = v19 - v46 + v53;
    }

    else
    {
      v47 = 0;
    }

    MEMORY[0x2667538A0]();
    v48 = v47;
    goto LABEL_69;
  }

  v66[0] = v19;
  LOWORD(v66[1]) = v20;
  BYTE2(v66[1]) = BYTE2(v20);
  BYTE3(v66[1]) = BYTE3(v20);
  BYTE4(v66[1]) = BYTE4(v20);
  BYTE5(v66[1]) = BYTE5(v20);
  outlined copy of Data._Representation(v24, v25);
  closure #1 in static Data.== infix(_:_:)(v66, v24, v25, &v65);
  if (!v5)
  {
    v5 = 0;
    outlined consume of Data._Representation(v24, v25);
    outlined consume of Data._Representation(v62, v63);

    outlined consume of Data._Representation(v19, v20);
    v39 = v65;
    goto LABEL_71;
  }

LABEL_89:
  result = outlined consume of Data._Representation(v24, v25);
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    outlined init with copy of MLS.WriteGroupData(a2, v13);
    outlined init with copy of MLS.WriteGroupData(a2, v13);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      v10 = swift_slowAlloc();
      outlined init with copy of MLS.WriteGroupData(a2, v13);
      v9 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_15i16Messaging3MLSO17lmn3C20opq17IDV_10Foundation4T4VTG5ARxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAnQIsgnndzo_Tf1nc_n04_s15i16Messaging3MLSO17lmn56C5write18swiftMLSGroupWrite16clientIdentifieryAC0J9Groupt33V_AC012UniqueClientL0VtYaKFSbAE20opQ38IDV3key_10Foundation0N0V5valuet_tXEfU_AJ010WriteGroupT0VTf1nnc_n(v10, v6, a1, a2);
      MEMORY[0x266755550](v10, -1, -1);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of MLS.WriteGroupData(a2, v13);
    v8 = outlined init with copy of MLS.WriteGroupData(a2, v13);
  }

  MEMORY[0x28223BE20](v8);
  bzero(&v13[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0)], v7);
  outlined init with copy of MLS.WriteGroupData(a2, v13);
  v9 = specialized closure #1 in _NativeDictionary.filter(_:)(&v13[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0)], v6, a1, a2);
  outlined destroy of MLS.WriteGroupData(a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_8:
  outlined destroy of MLS.WriteGroupData(a2);
  outlined destroy of MLS.WriteGroupData(a2);
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

unint64_t specialized MLS.InMemoryPersister.State.init()@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_10Foundation4UUIDVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_10Foundation4DataVTt0g5Tf4g_n(v2);
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVTt0g5Tf4g_n(v2);
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_10Foundation4DataVTt0g5Tf4g_n(v2);
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_SayAE15PersistedMemberVGTt0g5Tf4g_n(v2);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_SayAE15PersistedMemberVGTt0g5Tf4g_n(v2);
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_SayAE15PersistedMemberVGTt0g5Tf4g_n(v2);
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDV_SiTt0g5Tf4g_n(v2);
  UpdateVTt0g5Tf4g_n = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_AE21EventsSinceLastUpdateVTt0g5Tf4g_n(v2);
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AG08IncomingJ5EntryVTt0g5Tf4g_n(v2);
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AG08OutgoingJ5EntryVTt0g5Tf4g_n(v2);
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_AC4DataVTt0g5Tf4g_n(v2);
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV_10Foundation4DataVTt0g5Tf4g_n(v2);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV_10Foundation4DataVTt0g5Tf4g_n(v2);
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v14;
  a1[3] = v13;
  a1[4] = v12;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  a1[8] = UpdateVTt0g5Tf4g_n;
  a1[9] = 0;
  a1[10] = v7;
  a1[11] = v8;
  a1[12] = v9;
  a1[13] = v10;
  a1[14] = result;
  return result;
}

uint64_t outlined consume of MLS.InMemoryPersister.State?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_265078FA8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t partial apply for closure #1 in MLS.InMemoryPersister.persisterQueue.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.InMemoryPersister.persisterQueue.getter(v0);
}

uint64_t partial apply for closure #2 in MLS.InMemoryPersister.persisterQueue.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in MLS.InMemoryPersister.persisterQueue.getter(v0);
}

uint64_t partial apply for closure #3 in MLS.InMemoryPersister.persisterQueue.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #3 in MLS.InMemoryPersister.persisterQueue.getter(v0);
}

unint64_t lazy protocol witness table accessor for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError()
{
  result = lazy protocol witness table cache variable for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError;
  if (!lazy protocol witness table cache variable for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError;
  if (!lazy protocol witness table cache variable for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.InMemoryPersisterError and conformance MLS.InMemoryPersisterError);
  }

  return result;
}

double _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = -1;
  return result;
}

uint64_t _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSgWOg(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 > 0x10)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister()
{
  result = lazy protocol witness table cache variable for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister;
  if (!lazy protocol witness table cache variable for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister)
  {
    type metadata accessor for MLS.SwiftMLSPersister();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SwiftMLSPersister and conformance MLS.SwiftMLSPersister);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.InMemoryPersister.GroupStoreID and conformance MLS.InMemoryPersister.GroupStoreID()
{
  result = lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupStoreID and conformance MLS.InMemoryPersister.GroupStoreID;
  if (!lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupStoreID and conformance MLS.InMemoryPersister.GroupStoreID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupStoreID and conformance MLS.InMemoryPersister.GroupStoreID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.InMemoryPersister.GroupMessageStoreID and conformance MLS.InMemoryPersister.GroupMessageStoreID()
{
  result = lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupMessageStoreID and conformance MLS.InMemoryPersister.GroupMessageStoreID;
  if (!lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupMessageStoreID and conformance MLS.InMemoryPersister.GroupMessageStoreID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupMessageStoreID and conformance MLS.InMemoryPersister.GroupMessageStoreID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.InMemoryPersister.GroupEventStoreID and conformance MLS.InMemoryPersister.GroupEventStoreID()
{
  result = lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupEventStoreID and conformance MLS.InMemoryPersister.GroupEventStoreID;
  if (!lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupEventStoreID and conformance MLS.InMemoryPersister.GroupEventStoreID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.InMemoryPersister.GroupEventStoreID and conformance MLS.InMemoryPersister.GroupEventStoreID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.InMemoryPersister.SwiftMLSGroupStoreID and conformance MLS.InMemoryPersister.SwiftMLSGroupStoreID()
{
  result = lazy protocol witness table cache variable for type MLS.InMemoryPersister.SwiftMLSGroupStoreID and conformance MLS.InMemoryPersister.SwiftMLSGroupStoreID;
  if (!lazy protocol witness table cache variable for type MLS.InMemoryPersister.SwiftMLSGroupStoreID and conformance MLS.InMemoryPersister.SwiftMLSGroupStoreID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.InMemoryPersister.SwiftMLSGroupStoreID and conformance MLS.InMemoryPersister.SwiftMLSGroupStoreID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.InMemoryPersister.SwiftMLSEpochStoreID and conformance MLS.InMemoryPersister.SwiftMLSEpochStoreID()
{
  result = lazy protocol witness table cache variable for type MLS.InMemoryPersister.SwiftMLSEpochStoreID and conformance MLS.InMemoryPersister.SwiftMLSEpochStoreID;
  if (!lazy protocol witness table cache variable for type MLS.InMemoryPersister.SwiftMLSEpochStoreID and conformance MLS.InMemoryPersister.SwiftMLSEpochStoreID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.InMemoryPersister.SwiftMLSEpochStoreID and conformance MLS.InMemoryPersister.SwiftMLSEpochStoreID);
  }

  return result;
}

uint64_t sub_265079734@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_265079780(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);

  return v3(v4);
}

double sub_2650797D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 136))(v7);
  v3 = v11;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *(a2 + 96) = v12;
  *(a2 + 112) = v13;
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_26507985C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 96);
  v10[5] = *(a1 + 80);
  v10[6] = v3;
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v10[1] = v4;
  v10[2] = v5;
  v11 = *(a1 + 112);
  v10[3] = v6;
  v10[4] = v2;
  v7 = *(**a2 + 144);
  outlined init with copy of MLS.InMemoryPersister.State(v10, v9);
  return v7(v10);
}

double sub_2650798EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 160))(v7);
  v3 = v11;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  *(a2 + 96) = v12;
  *(a2 + 112) = v13;
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_265079974(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 96);
  v10[5] = *(a1 + 80);
  v10[6] = v3;
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v10[1] = v4;
  v10[2] = v5;
  v11 = *(a1 + 112);
  v10[3] = v6;
  v10[4] = v2;
  v7 = *(**a2 + 168);
  outlined init with copy of MLS.OutgoingEventState?(v10, v9, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC5StateVSgMR);
  return v7(v10);
}

uint64_t sub_265079A14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_265079A60(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 192);

  return v3(v4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.committedState.setter(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 112);
  v5 = *(*v1 + 144);
  v6 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v6;
  v7 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v7;
  v11 = v2;
  v12 = v3;
  v8 = *(a1 + 96);
  v13 = *(a1 + 80);
  v14 = v8;
  v15 = v4;
  return v5(v10);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.transactionState.setter(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(*v1 + 168);
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  v5 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v5;
  v6 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v6;
  v8[6] = *(a1 + 96);
  v9 = v2;
  return v3(v8);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.atomically<A>(with:do:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 216);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 224);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 232);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 240);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.deleteGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 248);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 256);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 264);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 272);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 280);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of MLS.SwiftMLSPersister.readEpochData(groupID:epochID:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 288);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 296);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 304);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.save(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 312);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.delete(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 320);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 328);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 336);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadClientIdentifiersWithEvents()()
{
  v2 = *(*v0 + 344);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:);

  return v6();
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadEvents(clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 352);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadRetriableEventStates(clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 360);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.save(swiftMLSClientID:forIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 368);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadSwiftMLSClientID(identifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 376);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 384);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of MLS.InMemoryPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.save(retryCount:forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 392);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.read(clientUUID:)(uint64_t a1)
{
  v4 = *(*v1 + 400);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 408);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 416);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 424);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of MLS.SwiftMLSPersister.readGroupState(groupID:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.write(swiftMLSGroupWrite:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 432);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.InMemoryPersister.getSwiftMLSPersister(forClientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 440);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.InMemoryPersister.IncomingEventEntry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 112))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 96);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.InMemoryPersister.IncomingEventEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGSg(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 > 0x10)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for MLS.InMemoryPersister.OutgoingEventEntry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 296))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 192);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.InMemoryPersister.OutgoingEventEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 296) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 296) = 0;
    }

    if (a2)
    {
      *(result + 192) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.InMemoryPersister.GroupMessageStoreID(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.InMemoryPersister.GroupMessageStoreID(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.InMemoryPersister.State(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.InMemoryPersister.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVSgWOi0_(uint64_t a1)
{
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = 1;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  result = a1 + 200;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8SwiftMLS0E0O5GroupO6MemberVG_AH8IdentityO10CredentialOs5NeverOTg5026_s15SecureMessaging3MLSO25d120MLSClientCoordinatorC15processIncoming7message8forGroup7contextAC0H23MessageProcessedContextVy_10Foundation4DataVGAC0hM0y7_AC9Allg12OG_SSAC0hmO0y45_ANGtYaKFAOyYaYbKAA8MLSActorCYcXEfU0_0dC0ABO8h3O10I17OA_0K0O0S0VXEfU0_Tf1cn_nTm(uint64_t a1, uint64_t a2)
{
  v22[1] = a2;
  v27 = type metadata accessor for MLS.Identity.SigningIdentity();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v25 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MLS.Identity.Credential();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v26);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v22[0] = v2;
    v29 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v29;
    v13 = *(type metadata accessor for MLS.Group.Member() - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    if (one-time initialization token for shared != -1)
    {
      v21 = v13;
      swift_once();
      v13 = v21;
    }

    v28 = static MLSActor.shared;
    v15 = (v4 + 8);
    v23 = *(v13 + 72);
    v24 = v7 + 32;
    do
    {
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v16 = v25;
      MLS.Group.Member.identity.getter();
      MLS.Identity.SigningIdentity.credential.getter();
      (*v15)(v16, v27);
      v29 = v12;
      v17 = v10;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
        v12 = v29;
      }

      *(v12 + 16) = v19 + 1;
      (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v17, v26);
      v14 += v23;
      --v11;
      v10 = v17;
    }

    while (v11);
  }

  return v12;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15SecureMessaging3MLSO9AllMemberOG_AH09PersistedH0Vs5NeverOTg504_s15d129Messaging3MLSO25SwiftMLSClientCoordinatorC17addPendingMembers33_4A5F1255AF5325EF77C6CF0723488492LL10identifier05otherI0ySS_ShyAC9gh11OGtYaKFAC09I10S0VAKXEfU_Tf1cn_nTm(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v35 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v35;
  v6 = v5 + 56;
  v7 = -1 << *(v5 + 32);
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v27 = v5 + 64;
  v29 = v5 + 56;
  v30 = v5;
  v28 = v3;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v5 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v6 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_25;
    }

    v32 = v10;
    v33 = *(v5 + 36);
    v13 = *(v5 + 48) + 32 * v9;
    v15 = *v13;
    v14 = *(v13 + 8);
    v16 = *(v13 + 24);
    v34 = *(v13 + 16);
    outlined copy of MLS.AllMember();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    result = swift_task_isCurrentExecutor();
    if ((result & 1) == 0)
    {
      result = swift_task_reportUnexpectedExecutor();
    }

    v18 = *(v35 + 16);
    v17 = *(v35 + 24);
    if (v18 >= v17 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
    }

    *(v35 + 16) = v18 + 1;
    v19 = v35 + 32 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v14;
    *(v19 + 48) = v34;
    *(v19 + 56) = v16;
    *(v19 + 57) = a3;
    v5 = v30;
    v11 = 1 << *(v30 + 32);
    if (v9 >= v11)
    {
      goto LABEL_26;
    }

    v6 = v29;
    v20 = *(v29 + 8 * v12);
    if ((v20 & (1 << v9)) == 0)
    {
      goto LABEL_27;
    }

    if (v33 != *(v30 + 36))
    {
      goto LABEL_28;
    }

    v21 = v20 & (-2 << (v9 & 0x3F));
    if (v21)
    {
      v11 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v12 << 6;
      v23 = v12 + 1;
      v24 = (v27 + 8 * v12);
      while (v23 < (v11 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v9, v33, 0);
          v11 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<MLS.Identity.SigningIdentity>.Index._Variant(v9, v33, 0);
    }

LABEL_4:
    v10 = v32 + 1;
    v9 = v11;
    if (v32 + 1 == v28)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8SwiftMLS0E0O5GroupO12MemberUpdateVG_AH8IdentityO10CredentialOs5NeverOTg5026_s15SecureMessaging3MLSO25d120MLSClientCoordinatorC15processIncoming7message8forGroup7contextAC0H23MessageProcessedContextVy_10Foundation4DataVGAC0hM0z7_AC9Allg12OG_SSAC0hmO0z45_ANGtYaKFAOyYaYbKAA8MLSActorCYcXEfU0_0dC0ABO8i3O10j10OA_0K0O0S6H7VXEfU2_Tf1cn_n(uint64_t a1)
{
  v31 = type metadata accessor for MLS.Identity.SigningIdentity();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MLS.Group.Member();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MLS.Identity.Credential();
  v32 = *(v27 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v27);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v24 = v1;
    v34 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v34;
    v14 = *(type metadata accessor for MLS.Group.MemberUpdate() - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    if (one-time initialization token for shared != -1)
    {
      v23 = v14;
      swift_once();
      v14 = v23;
    }

    v33 = static MLSActor.shared;
    v16 = (v6 + 8);
    v17 = (v3 + 8);
    v25 = *(v14 + 72);
    v26 = v32 + 32;
    do
    {
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v18 = v28;
      MLS.Group.MemberUpdate.new.getter();
      v19 = v30;
      MLS.Group.Member.identity.getter();
      (*v16)(v18, v29);
      MLS.Identity.SigningIdentity.credential.getter();
      (*v17)(v19, v31);
      v34 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
        v13 = v34;
      }

      *(v13 + 16) = v21 + 1;
      (*(v32 + 32))(v13 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v21, v11, v27);
      v15 += v25;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t specialized MLS.IncomingMessage.description.getter()
{
  _StringGuts.grow(_:)(80);
  MEMORY[0x2667545A0](0xD00000000000001CLL, 0x80000002651E8570);
  MEMORY[0x2667545A0](v0[2], v0[3]);
  MEMORY[0x2667545A0](0x7265646E6573202CLL, 0xEA0000000000203ALL);
  *v6 = *(v0 + 2);
  *&v6[9] = *(v0 + 41);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x2667545A0](0x67617373656D202CLL, 0xEF203A6570795465);
  v6[0] = *(v0 + 57);
  _print_unlocked<A, B>(_:_:)();
  result = MEMORY[0x2667545A0](0xD000000000000012, 0x80000002651E8590);
  v2 = *v0;
  v3 = v0[1] >> 62;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_9;
    }

    v4 = v2 + 16;
    v2 = *(v2 + 16);
    if (!__OFSUB__(*(v4 + 8), v2))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(v2), v2))
  {
LABEL_9:
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v5);

    MEMORY[0x2667545A0](41, 0xE100000000000000);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t MLS.SwiftMLSClientPicker.client.getter@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of MLS.SwiftMLSClientPicker(v1, v11);
  if (v12)
  {
    return outlined init with take of MLS.KeyUpdatePolicy(v11, a1);
  }

  outlined init with take of MLS.KeyUpdatePolicy(v11, v8);
  v4 = v9;
  v5 = v10;
  v6 = __swift_project_boxed_opaque_existential_1(v8, v9);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t specialized MLS.OutgoingEventType.commit.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 144);
  v22[8] = *(v1 + 128);
  v22[9] = v3;
  v22[10] = *(v1 + 160);
  v23 = *(v1 + 176);
  v4 = *(v1 + 80);
  v22[4] = *(v1 + 64);
  v22[5] = v4;
  v5 = *(v1 + 112);
  v22[6] = *(v1 + 96);
  v22[7] = v5;
  v6 = *(v1 + 16);
  v22[0] = *v1;
  v22[1] = v6;
  v7 = *(v1 + 48);
  v22[2] = *(v1 + 32);
  v22[3] = v7;
  switch(_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v22))
  {
    case 3u:
    case 6u:
    case 7u:
    case 0xAu:
    case 0xFu:
    case 0x10u:
      result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v22, v8);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      break;
    default:
      destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v22, v8);
      v10 = *(v1 + 144);
      v20[8] = *(v1 + 128);
      v20[9] = v10;
      v20[10] = *(v1 + 160);
      v21 = *(v1 + 176);
      v11 = *(v1 + 80);
      v20[4] = *(v1 + 64);
      v20[5] = v11;
      v12 = *(v1 + 112);
      v20[6] = *(v1 + 96);
      v20[7] = v12;
      v13 = *(v1 + 16);
      v20[0] = *v1;
      v20[1] = v13;
      v14 = *(v1 + 48);
      v20[2] = *(v1 + 32);
      v20[3] = v14;
      v16 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v20, v15);
      v17 = v16[8];
      v18 = v16[9];
      v19 = v16[10];
      *a1 = v16[7];
      *(a1 + 8) = v17;
      *(a1 + 16) = v18;
      *(a1 + 24) = v19;

      result = outlined copy of Data._Representation(v18, v19);
      break;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MLS.SwiftMLSClientCoordinatorError.ErrorType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MLS.SwiftMLSClientCoordinatorError.ErrorType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance MLS.SwiftMLSClientCoordinatorError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.SwiftMLSClientCoordinatorError.encode(to:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30SwiftMLSClientCoordinatorErrorV10CodingKeys33_4A5F1255AF5325EF77C6CF0723488492LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO30SwiftMLSClientCoordinatorErrorV10CodingKeys33_4A5F1255AF5325EF77C6CF0723488492LLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.CodingKeys and conformance MLS.SwiftMLSClientCoordinatorError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError.ErrorType and conformance MLS.SwiftMLSClientCoordinatorError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.SwiftMLSClientCoordinatorError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.SwiftMLSClientCoordinatorError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MLS.SwiftMLSClientCoordinatorError@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized MLS.SwiftMLSClientCoordinatorError.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v7 = a5[1];
  v6[6] = *a5;
  v6[7] = v7;
  return MEMORY[0x2822009F8](static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:), 0, 0);
}

void static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v10 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  _StringGuts.grow(_:)(19);

  MEMORY[0x2667545A0](v2, v1);
  *(v0 + 64) = 0x80000002651E9F90;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v10;
  *(v5 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 16);

  MLS.Persister.atomically<A>(with:do:)(v9, 0xD00000000000001BLL, 0x80000002651E9F90, &async function pointer to partial apply for closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:), v5, ObjectType, &type metadata for MLS.SwiftMLSClientPicker, v7);
}

uint64_t static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:), 0, 0);
  }

  else
  {
    v4 = v3[8];
    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[16] = v8;
  v9 = *(v8 - 8);
  v6[17] = v9;
  v10 = *(v9 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v11 = type metadata accessor for MLS.Client.Configuration();
  v6[22] = v11;
  v12 = *(v11 - 8);
  v6[23] = v12;
  v13 = *(v12 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static MLSActor.shared;
  v6[28] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:), v14, 0);
}

uint64_t closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)()
{
  v1 = v0[10];
  v0[2] = v0[9];
  v0[3] = v1;

  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  v3 = v0[27];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[11];

  return static MLS.swiftMLSConfiguration(uniqueClientIdentifier:persister:testCertAnchors:)(v3, v0 + 2, v6, v4, v5);
}

{
  v2 = *(*v1 + 232);
  v3 = *v1;
  v3[30] = v0;

  if (v0)
  {
    v4 = v3[28];

    return MEMORY[0x2822009F8](closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:), v4, 0);
  }

  else
  {
    v5 = v3[11];
    v17 = v3[12];
    v7 = v3[9];
    v6 = v3[10];
    ObjectType = swift_getObjectType();
    v3[4] = v7;
    v3[31] = ObjectType;
    v3[5] = v6;
    v9 = *(v17 + 24);
    v16 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    v3[32] = v11;
    *v11 = v3;
    v11[1] = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
    v12 = v3[15];
    v14 = v3[11];
    v13 = v3[12];

    return (v16)(v12, v3 + 4, ObjectType, v13);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  }

  else
  {
    v5 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of NSObject?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v4 = v0[27];
    v6 = v0[23];
    v5 = v0[24];
    v7 = v0[22];
    v8 = v0[16];
    v9 = v0[17];
    v10 = v0[14];
    v0[38] = type metadata accessor for MLS.RCSClient();
    (*(v6 + 16))(v5, v4, v7);
    (*(v9 + 56))(v10, 1, 1, v8);
    v11 = *(MEMORY[0x277D6AC20] + 4);
    v12 = swift_task_alloc();
    v0[39] = v12;
    *v12 = v0;
    v12[1] = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
    v13 = v0[24];
    v14 = v0[14];

    return MEMORY[0x2821D00D8](v13, v14);
  }

  else
  {
    v16 = v0[26];
    v15 = v0[27];
    v17 = v0[22];
    v18 = v0[23];
    v20 = v0[20];
    v19 = v0[21];
    (*(v2 + 32))(v19, v3, v1);
    v0[34] = type metadata accessor for MLS.RCSClient();
    (*(v18 + 16))(v16, v15, v17);
    (*(v2 + 16))(v20, v19, v1);
    v21 = *(MEMORY[0x277D6AC28] + 4);
    v22 = swift_task_alloc();
    v0[35] = v22;
    *v22 = v0;
    v22[1] = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
    v23 = v0[26];
    v24 = v0[20];

    return MEMORY[0x2821D00E0](v23, v24);
  }
}

{
  v1 = v0[36];
  if (v1)
  {
    v2 = v0[34];
    v3 = v0[21];
    v4 = v0[16];
    v5 = v0[17];
    v6 = v0[10];
    v7 = v0[8];

    v7[3] = v2;
    v7[4] = &protocol witness table for MLS.RCSClient;
    *v7 = v1;
    (*(v5 + 8))(v3, v4);
    v8 = v0[26];
    v10 = v0[24];
    v9 = v0[25];
    v12 = v0[20];
    v11 = v0[21];
    v14 = v0[18];
    v13 = v0[19];
    v29 = v0[15];
    v30 = v0[14];
    v15 = v0[8];
    (*(v0[23] + 8))(v0[27], v0[22]);
    *(v15 + 40) = 0;

    v16 = v0[1];

    return v16();
  }

  else
  {
    (*(v0[17] + 8))(v0[21], v0[16]);
    v18 = v0[27];
    v20 = v0[23];
    v19 = v0[24];
    v21 = v0[22];
    v22 = v0[16];
    v23 = v0[17];
    v24 = v0[14];
    v0[38] = type metadata accessor for MLS.RCSClient();
    (*(v20 + 16))(v19, v18, v21);
    (*(v23 + 56))(v24, 1, 1, v22);
    v25 = *(MEMORY[0x277D6AC20] + 4);
    v26 = swift_task_alloc();
    v0[39] = v26;
    *v26 = v0;
    v26[1] = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
    v27 = v0[24];
    v28 = v0[14];

    return MEMORY[0x2821D00D8](v27, v28);
  }
}

{
  v1 = v0[40];
  v2 = v0[18];
  v14 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  dispatch thunk of MLS.Client.Client.clientUUID.getter();

  v0[6] = v4;
  v0[7] = v3;
  v5 = *(v14 + 16);
  v13 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  v7[1] = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  v8 = v0[31];
  v9 = v0[18];
  v11 = v0[11];
  v10 = v0[12];

  return (v13)(v9, v0 + 6, v8, v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v12 = *v1;
  *(*v1 + 344) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = *(v2 + 224);
    v8 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  }

  else
  {
    v9 = *(v2 + 224);
    v10 = *(v2 + 80);

    v8 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  v1 = v0[40];
  v2 = v0[8];
  v2[3] = v0[38];
  v2[4] = &protocol witness table for MLS.RCSClient;
  *v2 = v1;
  v3 = v0[26];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v13 = v0[15];
  v14 = v0[14];
  v10 = v0[8];
  (*(v0[23] + 8))(v0[27], v0[22]);
  *(v10 + 40) = 0;

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[10];

  v14 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[14];
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[10];
  (*(v0[23] + 8))(v0[27], v0[22]);

  v14 = v0[33];
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[14];
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[23];
  (*(v0[17] + 8))(v0[21], v0[16]);
  (*(v3 + 8))(v1, v2);
  v16 = v0[37];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[20];
  v8 = v0[21];
  v11 = v0[18];
  v10 = v0[19];
  v12 = v0[14];
  v13 = v0[15];

  v14 = v0[1];

  return v14();
}

{
  (*(v0[23] + 8))(v0[27], v0[22]);
  v13 = v0[41];
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[14];
  v10 = v0[15];

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[40];
  v2 = v0[27];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[10];

  (*(v4 + 8))(v2, v3);

  v18 = v0[43];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v11 = v0[20];
  v10 = v0[21];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[14];
  v15 = v0[15];

  v16 = v0[1];

  return v16();
}

uint64_t closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  v7 = v3[28];
  if (v1)
  {
    v8 = v4[10];

    v9 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  }

  else
  {
    v9 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 312);
  v6 = *v2;
  v4[40] = a1;
  v4[41] = v1;

  v7 = v3[28];
  if (v1)
  {
    v8 = v4[10];

    v9 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  }

  else
  {
    v9 = closure #1 in static MLS.SwiftMLSClientPicker.defaultPicker(persister:clientIdentifier:selfURI:testCertAnchors:);
  }

  return MEMORY[0x2822009F8](v9, v7, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.clientEventDeliverer.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return swift_unknownObjectRetain();
}

uint64_t MLS.SwiftMLSClientCoordinator.persister.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return swift_unknownObjectRetain();
}

uint64_t MLS.SwiftMLSClientCoordinator.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier + 8);
  *a1 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  a1[1] = v2;
}

uint64_t MLS.SwiftMLSClientCoordinator.selfMember.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember;
  v3 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 8);
  v4 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember + 16);
  *a1 = *(v1 + direct field offset for MLS.SwiftMLSClientCoordinator.selfMember);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v2 + 24);
  return outlined copy of MLS.AllMember();
}

uint64_t MLS.SwiftMLSClientCoordinator.identifierToKeyUpdateTracker.getter()
{
  v1 = direct field offset for MLS.SwiftMLSClientCoordinator.identifierToKeyUpdateTracker;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t MLS.SwiftMLSClientCoordinator.identifierToKeyUpdateTracker.setter(uint64_t a1)
{
  v3 = direct field offset for MLS.SwiftMLSClientCoordinator.identifierToKeyUpdateTracker;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MLS.SwiftMLSClientCoordinator.keyPackage.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;
  v2[4] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.keyPackage.getter, v3, 0);
}

void MLS.SwiftMLSClientCoordinator.keyPackage.getter()
{
  v1 = v0[3] + direct field offset for MLS.SwiftMLSClientCoordinator.keyPackageProvider;
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *(v5 + 16) = v1;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = MLS.SwiftMLSClientCoordinator.keyPackage.getter;
  v7 = v0[2];

  MLS.Persister.atomically<A>(with:do:)(v7, 0x5079654B666C6573, 0xEE006567616B6361, &async function pointer to partial apply for closure #2 in MLS.KeyPackageProvider.keyPackage(isWithinPersisterTransaction:), v5, ObjectType, &type metadata for MLS.KeyPackageInfo, v2);
}

uint64_t MLS.SwiftMLSClientCoordinator.keyPackage.getter()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.keyPackage.getter, v4, 0);
  }

  else
  {
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t MLS.SwiftMLSClientCoordinator.signaturePublicKey.getter()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator signaturePublicKey loading key", v4, 2u);
    MEMORY[0x266755550](v4, -1, -1);
  }

  outlined init with copy of MLS.SwiftMLSClientPicker(v1 + 16, &v28);
  if (v31)
  {
    outlined init with take of MLS.KeyUpdatePolicy(&v28, v32);
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy(&v28, v25);
    v5 = v26;
    v6 = v27;
    v7 = __swift_project_boxed_opaque_existential_1(v25, v26);
    v33 = v5;
    v34 = *(v6 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  v9 = v33;
  v10 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  (*(v10 + 8))(&v28, v9, v10);
  v11 = v30;
  __swift_project_boxed_opaque_existential_1(&v28, v29);
  v12 = *(v11 + 8);
  v13 = dispatch thunk of MLS.Cryptography.SerializablePublicKey.data.getter();
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  outlined copy of Data._Representation(v13, v15);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v13, v15);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v28 = v19;
    *v18 = 136315138;
    outlined copy of Data._Representation(v13, v15);
    v20 = Data.description.getter();
    v22 = v21;
    outlined consume of Data._Representation(v13, v15);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v28);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_264F1F000, v16, v17, "SwiftMLSClientCoordinator signaturePublicKey loaded key { key: %s }", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266755550](v19, -1, -1);
    MEMORY[0x266755550](v18, -1, -1);
  }

  return v13;
}

uint64_t MLS.SwiftMLSClientCoordinator.__allocating_init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(v8 + 48);
  v16 = *(v8 + 52);
  swift_allocObject();
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(v17, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 6664) = v8;
  *(v9 + 6656) = v24;
  *(v9 + 6648) = a8;
  *(v9 + 6640) = a7;
  *(v9 + 6632) = a6;
  *(v9 + 6624) = a5;
  *(v9 + 6616) = a4;
  *(v9 + 6608) = a3;
  *(v9 + 6600) = a2;
  *(v9 + 6672) = *v8;
  v10 = type metadata accessor for UUID();
  *(v9 + 6680) = v10;
  v11 = *(v10 - 8);
  *(v9 + 6688) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 6696) = swift_task_alloc();
  v13 = type metadata accessor for MLS.Group.GroupInfo();
  *(v9 + 6704) = v13;
  v14 = *(v13 - 8);
  *(v9 + 6712) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 6720) = swift_task_alloc();
  v16 = *(*(type metadata accessor for MLS.KeyPackageProvider() - 8) + 64) + 15;
  *(v9 + 6728) = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  *(v9 + 6736) = v17;
  v18 = *(v17 - 8);
  *(v9 + 6744) = v18;
  *(v9 + 6752) = *(v18 + 64);
  *(v9 + 6760) = swift_task_alloc();
  *(v9 + 6768) = swift_task_alloc();
  *(v9 + 6776) = swift_task_alloc();
  *(v9 + 6784) = *v22;
  *(v9 + 6800) = *(v22 + 16);
  *(v9 + 753) = *(v22 + 24);
  *(v9 + 6808) = *v23;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v19 = static MLSActor.shared;
  *(v9 + 6816) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v19, 0);
}

uint64_t MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  v110 = v0;
  v91 = (v0 + 5800);
  v102 = (v0 + 5848);
  v80 = (v0 + 6016);
  v79 = (v0 + 6056);
  v78 = (v0 + 6176);
  v76 = (v0 + 6256);
  v1 = *(v0 + 6776);
  Logger.init(subsystem:category:)();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *&v107 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v107);
    _os_log_impl(&dword_264F1F000, v2, v3, "SwiftMLSClientCoordinator initializing { clientIdentifier: %s }", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  v89 = *(v0 + 6808);
  v98 = *(v0 + 6800);
  v6 = *(v0 + 6792);
  v7 = *(v0 + 6784);
  v93 = *(v0 + 6776);
  v8 = *(v0 + 6744);
  v86 = *(v0 + 6736);
  v75 = *(v0 + 6728);
  v99 = *(v0 + 6672);
  v9 = *(v0 + 6664);
  v74 = *(v0 + 6656);
  v84 = *(v0 + 6648);
  v97 = *(v0 + 6640);
  v10 = *(v0 + 6632);
  v90 = v10;
  v11 = *(v0 + 6624);
  v96 = v11;
  v81 = *(v0 + 6616);
  v12 = *(v0 + 6608);
  v13 = *(v0 + 6600);
  v95 = v13;
  v14 = *(v0 + 753);
  v94 = v14;
  outlined init with copy of MLS.SwiftMLSClientPicker(v84, (v9 + 16));
  v15 = &v9[direct field offset for MLS.SwiftMLSClientCoordinator.selfMember];
  *v15 = v7;
  *(v15 + 1) = v6;
  *(v15 + 2) = v98;
  v15[24] = v14;
  *(v9 + 8) = v13;
  *(v9 + 9) = v12;
  *(v9 + 10) = v81;
  *(v9 + 11) = v11;
  outlined init with copy of ServerBag.MLS(v10, (v9 + 104));
  *(v9 + 21) = &type metadata for MLS.DefaultKeyUpdatePolicy;
  *(v9 + 22) = &protocol witness table for MLS.DefaultKeyUpdatePolicy;
  *&v9[direct field offset for MLS.SwiftMLSClientCoordinator.identifierToKeyUpdateTracker] = MEMORY[0x277D84F98];
  outlined init with copy of MLS.KeyPackageProvider(v97, &v9[direct field offset for MLS.SwiftMLSClientCoordinator.keyPackageProvider]);
  v16 = direct field offset for MLS.SwiftMLSClientCoordinator.logger;
  v17 = *(v8 + 16);
  *(v0 + 6824) = v17;
  *(v0 + 6832) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(&v9[v16], v93, v86);
  v83 = &v9[direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier];
  *v83 = v7;
  v83[1] = v6;
  v18 = v6;
  outlined init with copy of MLS.SwiftMLSClientPicker(v84, v102);
  v19 = type metadata accessor for MLS.GroupLoader();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  swift_unknownObjectRetain();
  outlined copy of MLS.AllMember();
  outlined copy of MLS.AllMember();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v82 = v18;

  Logger.init(subsystem:category:)();
  v23 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_identifierToSwiftMLSGroup;
  *(v22 + v23) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v22 + 16) = v7;
  *(v22 + 24) = v18;
  *(v22 + 32) = v81;
  *(v22 + 40) = v11;
  *(v22 + 73) = *(v0 + 5873);
  v24 = *(v0 + 5864);
  *(v22 + 48) = *v102;
  *(v22 + 64) = v24;
  v87 = direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader;
  *&v9[direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader] = v22;
  v25 = v99[10];
  *(v0 + 6840) = v25;
  v26 = v99[11];
  *(v0 + 6848) = v26;
  v27 = v99[12];
  *(v0 + 6856) = v27;
  *&v24 = v27;
  *(&v24 + 1) = v99[13];
  v100 = v24;
  *(v0 + 6864) = *(&v24 + 1);
  *&v28 = v25;
  *(&v28 + 1) = v26;
  v103 = v28;
  *(v0 + 6376) = v28;
  *(v0 + 6392) = v24;
  v88 = type metadata accessor for MLS.EventSender();
  outlined init with copy of ServerBag.MLS(v74, v76);
  v29 = v83[1];
  *&v107 = *v83;
  *(&v107 + 1) = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v73 = MLS.EventSender.__allocating_init(eventDeliverer:bag:persister:groupLoader:clientIdentifier:)(v95, v12, v76, v81, v11, v22, &v107);
  *(v9 + 12) = v73;
  *&v9[direct field offset for MLS.SwiftMLSClientCoordinator.featureFlagsStore] = v89;
  outlined init with copy of ServerBag.MLS(v74, &v9[direct field offset for MLS.SwiftMLSClientCoordinator.bag]);
  v77 = type metadata accessor for MLS.GroupHealer();
  v104 = v89;
  outlined init with copy of MLS.SwiftMLSClientPicker(v84, v91);
  v85 = *&v9[v87];
  outlined init with copy of MLS.KeyPackageProvider(v97, v75);
  outlined init with copy of ServerBag.MLS(v90, v78);
  *&v107 = v7;
  *(&v107 + 1) = v18;
  v108 = v98;
  v109 = v94;
  v30 = v83[1];
  v105 = *v83;
  v106 = v30;

  outlined copy of MLS.AllMember();
  swift_unknownObjectRetain();

  v31 = specialized MLS.GroupHealer.__allocating_init(featureFlagsStore:swiftMLSClient:groupLoader:persister:eventSender:keyPackageProvider:credentialProvider:selfMember:clientIdentifier:)(&v104, v91, v85, v81, v11, v73, v75, v78, &v107, &v105, v77, v88, &protocol witness table for MLS.EventSender<A, B>);
  v32 = direct field offset for MLS.SwiftMLSClientCoordinator.groupHealer;
  *&v9[direct field offset for MLS.SwiftMLSClientCoordinator.groupHealer] = v31;
  v92 = type metadata accessor for MLS.OperationRunner();
  v33 = *(v9 + 12);
  outlined init with copy of ServerBag.MLS(v90, v79);
  v34 = *&v9[v87];
  v35 = type metadata accessor for MLS.KeyPackageFetcher();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  Logger.init(subsystem:category:)();
  *(v38 + 16) = v95;
  *(v38 + 24) = v12;
  outlined init with copy of MLS.KeyPackageProvider(v97, v75);
  outlined init with copy of ServerBag.MLS((v9 + 144), v80);
  v39 = *&v9[v32];
  v40 = *v83;
  v41 = v83[1];
  v104 = v89;
  v105 = v40;
  v106 = v41;
  *&v107 = v7;
  *(&v107 + 1) = v82;
  v108 = v98;
  v109 = v94;

  v42 = specialized MLS.OperationRunner.__allocating_init(eventSender:credentialProvider:groupLoader:persister:keyPackageFetcher:keyPackageProvider:keyUpdatePolicy:groupHealer:featureFlagsStore:uniqueClientIdentifier:selfMember:)(v33, v79, v34, v81, v96, v38, v75, v80, v39, &v104, &v105, &v107, v92, v88, &protocol witness table for MLS.EventSender<A, B>);
  *&v9[direct field offset for MLS.SwiftMLSClientCoordinator.runner] = v42;
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v103;
  *(v44 + 32) = v100;
  *(v44 + 48) = v43;
  v45 = *(*v42 + 192);

  v45(&async function pointer to partial apply for closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v44);

  v46 = *(v9 + 12);
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = v103;
  *(v48 + 32) = v100;
  *(v48 + 48) = v47;
  v49 = *(*v46 + 240);

  v49(&async function pointer to partial apply for closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v48);

  v50 = *(v9 + 12);
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v103;
  *(v52 + 32) = v100;
  *(v52 + 48) = v51;
  v53 = *(*v50 + 288);

  v53(&async function pointer to partial apply for closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v52);

  v54 = *(v9 + 12);
  v55 = swift_allocObject();
  swift_weakInit();

  v56 = swift_allocObject();
  *(v56 + 16) = v103;
  *(v56 + 32) = v100;
  *(v56 + 48) = v55;
  v57 = *(*v54 + 264);

  v57(&async function pointer to partial apply for closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v56);

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v107 = v61;
    *v60 = 136315138;
    *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v107);
    _os_log_impl(&dword_264F1F000, v58, v59, "SwiftMLSClientCoordinator loading stored events { clientIdentifier: %s }", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x266755550](v61, -1, -1);
    MEMORY[0x266755550](v60, -1, -1);
  }

  v62 = *(v0 + 6664);
  v64 = *(v9 + 10);
  v63 = *(v9 + 11);
  ObjectType = swift_getObjectType();
  v66 = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 6872) = direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  v67 = (v62 + v66);
  v68 = v67[1];
  *(v0 + 6576) = *v67;
  *(v0 + 6584) = v68;
  v69 = *(v63 + 160);

  v101 = (v69 + *v69);
  v70 = v69[1];
  v71 = swift_task_alloc();
  *(v0 + 6880) = v71;
  *v71 = v0;
  v71[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v101(v0 + 6560, v0 + 6576, ObjectType, v63);
}

{
  v2 = *v1;
  v3 = *(*v1 + 6880);
  v4 = *v1;
  v2[861] = v0;

  v5 = v2[823];

  v6 = v2[852];
  if (v0)
  {
    v7 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v7 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = *(v0 + 6776);
  v2 = *(v0 + 6560);
  *(v0 + 6896) = v2;
  v3 = *(v0 + 6568);
  *(v0 + 6904) = v3;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v55 = v7;
    *v6 = 136315650;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v55);
    *(v6 + 12) = 2048;
    *(v6 + 14) = *(v2 + 16);
    *(v6 + 22) = 2048;
    *(v6 + 24) = *(v3 + 16);

    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator loaded events { clientIdentifier: %s, outgoingEventCount: %ld, incomingEventCount: %ld }", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v8 = *(v0 + 6664);
  v9 = *(v2 + 32);
  *(v0 + 754) = v9;
  v10 = -1;
  v11 = -1 << v9;
  if (-(-1 << v9) < 64)
  {
    v10 = ~(-1 << -(-1 << v9));
  }

  v12 = v10 & *(v2 + 64);
  v13 = direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader;
  *(v0 + 6912) = direct field offset for MLS.SwiftMLSClientCoordinator.groupLoader;

  if (v12)
  {
    v14 = 0;
    v15 = *(v0 + 6896);
LABEL_11:
    *(v0 + 6928) = v14;
    *(v0 + 6920) = v12;
    v17 = __clz(__rbit64(v12)) | (v14 << 6);
    v18 = (*(v15 + 48) + 16 * v17);
    *(v0 + 6936) = *v18;
    *(v0 + 6944) = v18[1];
    *(v0 + 6952) = *(*(v15 + 56) + 8 * v17);
    v19 = *(**(v8 + v13) + 192);

    v52 = v19 + *v19;
    v20 = v19[1];
    v21 = swift_task_alloc();
    *(v0 + 6960) = v21;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    *v21 = v0;
    v21[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
LABEL_12:

    __asm { BRAA            X8, X16 }
  }

  v16 = 0;
  v15 = *(v0 + 6896);
  while (((63 - v11) >> 6) - 1 != v16)
  {
    v14 = v16 + 1;
    v12 = *(v15 + 8 * v16++ + 72);
    if (v12)
    {
      goto LABEL_11;
    }
  }

  v22 = *(v0 + 6904);

  v23 = *(v22 + 32);
  *(v0 + 755) = v23;
  v24 = -1;
  v25 = -1 << v23;
  if (-(-1 << v23) < 64)
  {
    v24 = ~(-1 << -v25);
  }

  v26 = v24 & *(v22 + 64);

  if (v26)
  {
    v27 = 0;
    v28 = *(v0 + 6904);
LABEL_22:
    *(v0 + 7024) = v27;
    *(v0 + 7016) = v26;
    v30 = *(v0 + 6912);
    v31 = *(v0 + 6664);
    v32 = __clz(__rbit64(v26)) | (v27 << 6);
    v33 = (*(v28 + 48) + 16 * v32);
    *(v0 + 7032) = *v33;
    *(v0 + 7040) = v33[1];
    *(v0 + 7048) = *(*(v28 + 56) + 8 * v32);
    v34 = *(**(v31 + v30) + 192);

    v52 = v34 + *v34;
    v35 = v34[1];
    v36 = swift_task_alloc();
    *(v0 + 7056) = v36;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    *v36 = v0;
    v36[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    goto LABEL_12;
  }

  v29 = 0;
  v28 = *(v0 + 6904);
  while (((63 - v25) >> 6) - 1 != v29)
  {
    v27 = v29 + 1;
    v26 = *(v28 + 8 * v29++ + 72);
    if (v26)
    {
      goto LABEL_22;
    }
  }

  v37 = *(v0 + 6776);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v55 = v41;
    *v40 = 136315138;
    *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v55);
    _os_log_impl(&dword_264F1F000, v38, v39, "SwiftMLSClientCoordinator loading stored event states { clientIdentifier: %s }", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x266755550](v41, -1, -1);
    MEMORY[0x266755550](v40, -1, -1);
  }

  v42 = *(v0 + 6664);
  v43 = (v42 + *(v0 + 6872));
  v45 = *(v42 + 80);
  v44 = *(v42 + 88);
  ObjectType = swift_getObjectType();
  v47 = v43[1];
  *(v0 + 6528) = *v43;
  *(v0 + 6536) = v47;
  v48 = *(v44 + 168);

  v53 = (v48 + *v48);
  v49 = v48[1];
  v50 = swift_task_alloc();
  *(v0 + 7400) = v50;
  *v50 = v0;
  v50[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v53(v0 + 6592, v0 + 6528, ObjectType, v44);
}

{
  v2 = *v1;
  v3 = *(*v1 + 6960);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[869];
    v5 = v2[852];
    v6 = v2[806];

    v7 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v8 = v5;
  }

  else
  {
    v8 = v2[852];
    v7 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v1 = *(v0 + 6952);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 6336), v0 + 5896);
  v2 = *(v1 + 16);
  *(v0 + 6968) = v2;
  v3 = *(v0 + 6952);
  if (v2)
  {
    v219 = (v0 + 760);
    v215 = (v0 + 1128);
    v217 = (v0 + 944);
    v211 = (v0 + 1496);
    v213 = (v0 + 1312);
    v210 = (v0 + 1680);
    v208 = (v0 + 1864);
    v205 = (v0 + 2232);
    v206 = (v0 + 2048);
    v203 = (v0 + 2600);
    v204 = (v0 + 2416);
    v202 = (v0 + 2784);
    *(v0 + 6976) = 0;
    v4 = *(v0 + 6664);
    memcpy((v0 + 16), (v3 + 32), 0x118uLL);
    v224 = *(v0 + 272);
    v223 = *(v0 + 280);
    v222 = *(v0 + 288);
    *(v0 + 5728) = *(v3 + 216);
    v5 = *(v3 + 248);
    v6 = *(v3 + 264);
    v7 = *(v3 + 232);
    *(v0 + 5792) = *(v3 + 280);
    *(v0 + 5760) = v5;
    *(v0 + 5776) = v6;
    *(v0 + 5744) = v7;
    v8 = *(v3 + 80);
    v10 = *(v3 + 32);
    v9 = *(v3 + 48);
    *(v0 + 3184) = *(v3 + 64);
    *(v0 + 3200) = v8;
    *(v0 + 3152) = v10;
    *(v0 + 3168) = v9;
    v11 = *(v3 + 144);
    v13 = *(v3 + 96);
    v12 = *(v3 + 112);
    *(v0 + 3248) = *(v3 + 128);
    *(v0 + 3264) = v11;
    *(v0 + 3216) = v13;
    *(v0 + 3232) = v12;
    v15 = *(v3 + 176);
    v14 = *(v3 + 192);
    v16 = *(v3 + 160);
    *(v0 + 3328) = *(v3 + 208);
    *(v0 + 3296) = v15;
    *(v0 + 3312) = v14;
    *(v0 + 3280) = v16;
    v17 = *(v4 + 96);
    v18 = *(v3 + 32);
    v19 = *(v3 + 48);
    v20 = *(v3 + 80);
    *(v0 + 3000) = *(v3 + 64);
    *(v0 + 3016) = v20;
    *(v0 + 2968) = v18;
    *(v0 + 2984) = v19;
    v21 = *(v3 + 96);
    v22 = *(v3 + 112);
    v23 = *(v3 + 144);
    *(v0 + 3064) = *(v3 + 128);
    *(v0 + 3080) = v23;
    *(v0 + 3032) = v21;
    *(v0 + 3048) = v22;
    v24 = *(v3 + 160);
    v25 = *(v3 + 176);
    v26 = *(v3 + 192);
    *(v0 + 3144) = *(v3 + 208);
    *(v0 + 3112) = v25;
    *(v0 + 3128) = v26;
    *(v0 + 3096) = v24;
    v226 = v17;
    switch(_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v0 + 2968))
    {
      case 1u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v117 = *(v0 + 160);
        *(v0 + 2728) = *(v0 + 144);
        *(v0 + 2744) = v117;
        *(v0 + 2760) = *(v0 + 176);
        *(v0 + 2776) = *(v0 + 192);
        v118 = *(v0 + 96);
        *(v0 + 2664) = *(v0 + 80);
        *(v0 + 2680) = v118;
        v119 = *(v0 + 128);
        *(v0 + 2696) = *(v0 + 112);
        *(v0 + 2712) = v119;
        v120 = *(v0 + 32);
        *v203 = *(v0 + 16);
        *(v0 + 2616) = v120;
        v121 = *(v0 + 64);
        *(v0 + 2632) = *(v0 + 48);
        *(v0 + 2648) = v121;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v203, v122);
        break;
      case 2u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v93 = *(v0 + 160);
        *(v0 + 2912) = *(v0 + 144);
        *(v0 + 2928) = v93;
        *(v0 + 2944) = *(v0 + 176);
        *(v0 + 2960) = *(v0 + 192);
        v94 = *(v0 + 96);
        *(v0 + 2848) = *(v0 + 80);
        *(v0 + 2864) = v94;
        v95 = *(v0 + 128);
        *(v0 + 2880) = *(v0 + 112);
        *(v0 + 2896) = v95;
        v96 = *(v0 + 32);
        *v202 = *(v0 + 16);
        *(v0 + 2800) = v96;
        v97 = *(v0 + 64);
        *(v0 + 2816) = *(v0 + 48);
        *(v0 + 2832) = v97;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v202, v98);
        break;
      case 3u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v105 = *(v0 + 160);
        *(v0 + 3648) = *(v0 + 144);
        *(v0 + 3664) = v105;
        *(v0 + 3680) = *(v0 + 176);
        *(v0 + 3696) = *(v0 + 192);
        v106 = *(v0 + 96);
        *(v0 + 3584) = *(v0 + 80);
        *(v0 + 3600) = v106;
        v107 = *(v0 + 128);
        *(v0 + 3616) = *(v0 + 112);
        *(v0 + 3632) = v107;
        v108 = *(v0 + 32);
        *(v0 + 3520) = *(v0 + 16);
        *(v0 + 3536) = v108;
        v109 = *(v0 + 64);
        *(v0 + 3552) = *(v0 + 48);
        *(v0 + 3568) = v109;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 3520, v110);
        break;
      case 4u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v75 = *(v0 + 160);
        *(v0 + 888) = *(v0 + 144);
        *(v0 + 904) = v75;
        *(v0 + 920) = *(v0 + 176);
        *(v0 + 936) = *(v0 + 192);
        v76 = *(v0 + 96);
        *(v0 + 824) = *(v0 + 80);
        *(v0 + 840) = v76;
        v77 = *(v0 + 128);
        *(v0 + 856) = *(v0 + 112);
        *(v0 + 872) = v77;
        v78 = *(v0 + 32);
        *v219 = *(v0 + 16);
        *(v0 + 776) = v78;
        v79 = *(v0 + 64);
        *(v0 + 792) = *(v0 + 48);
        *(v0 + 808) = v79;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v219, v80);
        break;
      case 5u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v123 = *(v0 + 160);
        *(v0 + 704) = *(v0 + 144);
        *(v0 + 720) = v123;
        *(v0 + 736) = *(v0 + 176);
        *(v0 + 752) = *(v0 + 192);
        v124 = *(v0 + 96);
        *(v0 + 640) = *(v0 + 80);
        *(v0 + 656) = v124;
        v125 = *(v0 + 128);
        *(v0 + 672) = *(v0 + 112);
        *(v0 + 688) = v125;
        v126 = *(v0 + 32);
        *(v0 + 576) = *(v0 + 16);
        *(v0 + 592) = v126;
        v127 = *(v0 + 64);
        *(v0 + 608) = *(v0 + 48);
        *(v0 + 624) = v127;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 576, v128);
        break;
      case 6u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v135 = *(v0 + 160);
        *(v0 + 4200) = *(v0 + 144);
        *(v0 + 4216) = v135;
        *(v0 + 4232) = *(v0 + 176);
        *(v0 + 4248) = *(v0 + 192);
        v136 = *(v0 + 96);
        *(v0 + 4136) = *(v0 + 80);
        *(v0 + 4152) = v136;
        v137 = *(v0 + 128);
        *(v0 + 4168) = *(v0 + 112);
        *(v0 + 4184) = v137;
        v138 = *(v0 + 32);
        *(v0 + 4072) = *(v0 + 16);
        *(v0 + 4088) = v138;
        v139 = *(v0 + 64);
        *(v0 + 4104) = *(v0 + 48);
        *(v0 + 4120) = v139;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 4072, v140);
        break;
      case 7u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v111 = *(v0 + 160);
        *(v0 + 1072) = *(v0 + 144);
        *(v0 + 1088) = v111;
        *(v0 + 1104) = *(v0 + 176);
        *(v0 + 1120) = *(v0 + 192);
        v112 = *(v0 + 96);
        *(v0 + 1008) = *(v0 + 80);
        *(v0 + 1024) = v112;
        v113 = *(v0 + 128);
        *(v0 + 1040) = *(v0 + 112);
        *(v0 + 1056) = v113;
        v114 = *(v0 + 32);
        *v217 = *(v0 + 16);
        *(v0 + 960) = v114;
        v115 = *(v0 + 64);
        *(v0 + 976) = *(v0 + 48);
        *(v0 + 992) = v115;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v217, v116);
        break;
      case 8u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v147 = *(v0 + 160);
        *(v0 + 1256) = *(v0 + 144);
        *(v0 + 1272) = v147;
        *(v0 + 1288) = *(v0 + 176);
        *(v0 + 1304) = *(v0 + 192);
        v148 = *(v0 + 96);
        *(v0 + 1192) = *(v0 + 80);
        *(v0 + 1208) = v148;
        v149 = *(v0 + 128);
        *(v0 + 1224) = *(v0 + 112);
        *(v0 + 1240) = v149;
        v150 = *(v0 + 32);
        *v215 = *(v0 + 16);
        *(v0 + 1144) = v150;
        v151 = *(v0 + 64);
        *(v0 + 1160) = *(v0 + 48);
        *(v0 + 1176) = v151;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v215, v152);
        break;
      case 9u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v87 = *(v0 + 160);
        *(v0 + 1440) = *(v0 + 144);
        *(v0 + 1456) = v87;
        *(v0 + 1472) = *(v0 + 176);
        *(v0 + 1488) = *(v0 + 192);
        v88 = *(v0 + 96);
        *(v0 + 1376) = *(v0 + 80);
        *(v0 + 1392) = v88;
        v89 = *(v0 + 128);
        *(v0 + 1408) = *(v0 + 112);
        *(v0 + 1424) = v89;
        v90 = *(v0 + 32);
        *v213 = *(v0 + 16);
        *(v0 + 1328) = v90;
        v91 = *(v0 + 64);
        *(v0 + 1344) = *(v0 + 48);
        *(v0 + 1360) = v91;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v213, v92);
        break;
      case 0xAu:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v141 = *(v0 + 160);
        *(v0 + 1624) = *(v0 + 144);
        *(v0 + 1640) = v141;
        *(v0 + 1656) = *(v0 + 176);
        *(v0 + 1672) = *(v0 + 192);
        v142 = *(v0 + 96);
        *(v0 + 1560) = *(v0 + 80);
        *(v0 + 1576) = v142;
        v143 = *(v0 + 128);
        *(v0 + 1592) = *(v0 + 112);
        *(v0 + 1608) = v143;
        v144 = *(v0 + 32);
        *v211 = *(v0 + 16);
        *(v0 + 1512) = v144;
        v145 = *(v0 + 64);
        *(v0 + 1528) = *(v0 + 48);
        *(v0 + 1544) = v145;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v211, v146);
        break;
      case 0xBu:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v69 = *(v0 + 160);
        *(v0 + 1808) = *(v0 + 144);
        *(v0 + 1824) = v69;
        *(v0 + 1840) = *(v0 + 176);
        *(v0 + 1856) = *(v0 + 192);
        v70 = *(v0 + 96);
        *(v0 + 1744) = *(v0 + 80);
        *(v0 + 1760) = v70;
        v71 = *(v0 + 128);
        *(v0 + 1776) = *(v0 + 112);
        *(v0 + 1792) = v71;
        v72 = *(v0 + 32);
        *v210 = *(v0 + 16);
        *(v0 + 1696) = v72;
        v73 = *(v0 + 64);
        *(v0 + 1712) = *(v0 + 48);
        *(v0 + 1728) = v73;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v210, v74);
        break;
      case 0xCu:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v81 = *(v0 + 160);
        *(v0 + 1992) = *(v0 + 144);
        *(v0 + 2008) = v81;
        *(v0 + 2024) = *(v0 + 176);
        *(v0 + 2040) = *(v0 + 192);
        v82 = *(v0 + 96);
        *(v0 + 1928) = *(v0 + 80);
        *(v0 + 1944) = v82;
        v83 = *(v0 + 128);
        *(v0 + 1960) = *(v0 + 112);
        *(v0 + 1976) = v83;
        v84 = *(v0 + 32);
        *v208 = *(v0 + 16);
        *(v0 + 1880) = v84;
        v85 = *(v0 + 64);
        *(v0 + 1896) = *(v0 + 48);
        *(v0 + 1912) = v85;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v208, v86);
        break;
      case 0xDu:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v129 = *(v0 + 160);
        *(v0 + 2176) = *(v0 + 144);
        *(v0 + 2192) = v129;
        *(v0 + 2208) = *(v0 + 176);
        *(v0 + 2224) = *(v0 + 192);
        v130 = *(v0 + 96);
        *(v0 + 2112) = *(v0 + 80);
        *(v0 + 2128) = v130;
        v131 = *(v0 + 128);
        *(v0 + 2144) = *(v0 + 112);
        *(v0 + 2160) = v131;
        v132 = *(v0 + 32);
        *v206 = *(v0 + 16);
        *(v0 + 2064) = v132;
        v133 = *(v0 + 64);
        *(v0 + 2080) = *(v0 + 48);
        *(v0 + 2096) = v133;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v206, v134);
        break;
      case 0xEu:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v63 = *(v0 + 160);
        *(v0 + 2360) = *(v0 + 144);
        *(v0 + 2376) = v63;
        *(v0 + 2392) = *(v0 + 176);
        *(v0 + 2408) = *(v0 + 192);
        v64 = *(v0 + 96);
        *(v0 + 2296) = *(v0 + 80);
        *(v0 + 2312) = v64;
        v65 = *(v0 + 128);
        *(v0 + 2328) = *(v0 + 112);
        *(v0 + 2344) = v65;
        v66 = *(v0 + 32);
        *v205 = *(v0 + 16);
        *(v0 + 2248) = v66;
        v67 = *(v0 + 64);
        *(v0 + 2264) = *(v0 + 48);
        *(v0 + 2280) = v67;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v205, v68);
        break;
      case 0xFu:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v99 = *(v0 + 160);
        *(v0 + 3832) = *(v0 + 144);
        *(v0 + 3848) = v99;
        *(v0 + 3864) = *(v0 + 176);
        *(v0 + 3880) = *(v0 + 192);
        v100 = *(v0 + 96);
        *(v0 + 3768) = *(v0 + 80);
        *(v0 + 3784) = v100;
        v101 = *(v0 + 128);
        *(v0 + 3800) = *(v0 + 112);
        *(v0 + 3816) = v101;
        v102 = *(v0 + 32);
        *(v0 + 3704) = *(v0 + 16);
        *(v0 + 3720) = v102;
        v103 = *(v0 + 64);
        *(v0 + 3736) = *(v0 + 48);
        *(v0 + 3752) = v103;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 3704, v104);
        break;
      case 0x10u:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v57 = *(v0 + 160);
        *(v0 + 3464) = *(v0 + 144);
        *(v0 + 3480) = v57;
        *(v0 + 3496) = *(v0 + 176);
        *(v0 + 3512) = *(v0 + 192);
        v58 = *(v0 + 96);
        *(v0 + 3400) = *(v0 + 80);
        *(v0 + 3416) = v58;
        v59 = *(v0 + 128);
        *(v0 + 3432) = *(v0 + 112);
        *(v0 + 3448) = v59;
        v60 = *(v0 + 32);
        *(v0 + 3336) = *(v0 + 16);
        *(v0 + 3352) = v60;
        v61 = *(v0 + 64);
        *(v0 + 3368) = *(v0 + 48);
        *(v0 + 3384) = v61;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 3336, v62);
        break;
      default:
        destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v27);
        v28 = *(v0 + 160);
        *(v0 + 2544) = *(v0 + 144);
        *(v0 + 2560) = v28;
        *(v0 + 2576) = *(v0 + 176);
        *(v0 + 2592) = *(v0 + 192);
        v29 = *(v0 + 96);
        *(v0 + 2480) = *(v0 + 80);
        *(v0 + 2496) = v29;
        v30 = *(v0 + 128);
        *(v0 + 2512) = *(v0 + 112);
        *(v0 + 2528) = v30;
        v31 = *(v0 + 32);
        *v204 = *(v0 + 16);
        *(v0 + 2432) = v31;
        v32 = *(v0 + 64);
        *(v0 + 2448) = *(v0 + 48);
        *(v0 + 2464) = v32;
        v34 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v204, v33);
        break;
    }

    v220 = v34[1];
    v221 = *v34;

    v214 = *(v0 + 6936);
    v216 = *(v0 + 6944);
    v153 = *(v0 + 6832);
    v154 = *(v0 + 6768);
    v155 = *(v0 + 6752);
    v156 = *(v0 + 6744);
    v157 = *(v0 + 6736);
    v218 = *(v0 + 6664);
    v207 = *(v0 + 6856);
    v209 = *(v0 + 6840);
    (*(v0 + 6824))(v154, *(v0 + 6776), v157);
    outlined init with copy of ServerBag.MLS(v0 + 5896, v0 + 6136);
    v158 = (*(v156 + 80) + 48) & ~*(v156 + 80);
    v159 = (v158 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
    v160 = (v158 + v155 + 191) & 0xFFFFFFFFFFFFFFF8;
    v161 = (v160 + 23) & 0xFFFFFFFFFFFFFFF8;
    v162 = (v161 + 79) & 0xFFFFFFFFFFFFFFF8;
    v212 = (v162 + 31) & 0xFFFFFFFFFFFFFFF8;
    v163 = swift_allocObject();
    *(v0 + 6992) = v163;
    *(v163 + 16) = v209;
    *(v163 + 32) = v207;
    (*(v156 + 32))(v163 + v158, v154, v157);
    v164 = v163 + v159;
    v165 = *(v0 + 3264);
    *(v164 + 96) = *(v0 + 3248);
    *(v164 + 112) = v165;
    v166 = *(v0 + 3232);
    *(v164 + 64) = *(v0 + 3216);
    *(v164 + 80) = v166;
    *(v164 + 176) = *(v0 + 3328);
    v167 = *(v0 + 3312);
    *(v164 + 144) = *(v0 + 3296);
    *(v164 + 160) = v167;
    *(v164 + 128) = *(v0 + 3280);
    v168 = *(v0 + 3168);
    *v164 = *(v0 + 3152);
    *(v164 + 16) = v168;
    v169 = *(v0 + 3200);
    *(v164 + 32) = *(v0 + 3184);
    *(v164 + 48) = v169;
    v170 = (v163 + v160);
    *v170 = v214;
    v170[1] = v216;
    v171 = v163 + v161;
    *(v171 + 64) = *(v0 + 5792);
    v172 = *(v0 + 5776);
    *(v171 + 32) = *(v0 + 5760);
    *(v171 + 48) = v172;
    v173 = *(v0 + 5744);
    *v171 = *(v0 + 5728);
    *(v171 + 16) = v173;
    v174 = v163 + v162;
    *v174 = v224;
    *(v174 + 8) = v223;
    *(v174 + 16) = v222;
    *(v163 + v212) = v218;
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 6136), v163 + ((v212 + 15) & 0xFFFFFFFFFFFFFFF8));
    v175 = *(*v226 + 320);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 296, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 3888, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 5368, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
    v225 = (v175 + *v175);
    v176 = v175[1];
    v177 = swift_task_alloc();
    *(v0 + 7000) = v177;
    *v177 = v0;
    v177[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v178 = *(v0 + 6944);
    v179 = *(v0 + 6936);

    return (v225)(v179, v178, v221, v220, 0, &async function pointer to partial apply for closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v163);
  }

  else
  {
    v35 = *(v0 + 6944);
    v36 = *(v0 + 6952);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5896));
    v37 = *(v0 + 6928);
    v38 = (*(v0 + 6920) - 1) & *(v0 + 6920);
    if (v38)
    {
      v39 = *(v0 + 6896);
      goto LABEL_10;
    }

    while (1)
    {
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        JUMPOUT(0x265082858);
      }

      if (v40 >= (((1 << *(v0 + 754)) + 63) >> 6))
      {
        break;
      }

      v39 = *(v0 + 6896);
      v38 = *(v39 + 8 * v40 + 64);
      ++v37;
      if (v38)
      {
        v37 = v40;
LABEL_10:
        *(v0 + 6928) = v37;
        *(v0 + 6920) = v38;
        v41 = *(v0 + 6912);
        v42 = *(v0 + 6664);
        v43 = __clz(__rbit64(v38)) | (v37 << 6);
        v44 = (*(v39 + 48) + 16 * v43);
        *(v0 + 6936) = *v44;
        *(v0 + 6944) = v44[1];
        *(v0 + 6952) = *(*(v39 + 56) + 8 * v43);
        v45 = *(**(v42 + v41) + 192);

        v227 = v45 + *v45;
        v46 = v45[1];
        v47 = swift_task_alloc();
        *(v0 + 6960) = v47;
        lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
        *v47 = v0;
        v48 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
LABEL_11:
        v47[1] = v48;

        __asm { BRAA            X8, X16 }
      }
    }

    v49 = *(v0 + 6904);
    v50 = *(v0 + 6896);

    v51 = *(v49 + 32);
    *(v0 + 755) = v51;
    v52 = -1;
    v53 = -1 << v51;
    if (-(-1 << v51) < 64)
    {
      v52 = ~(-1 << -v53);
    }

    v54 = v52 & *(v49 + 64);

    if (v54)
    {
      v55 = 0;
      v56 = *(v0 + 6904);
LABEL_40:
      *(v0 + 7024) = v55;
      *(v0 + 7016) = v54;
      v182 = *(v0 + 6912);
      v183 = *(v0 + 6664);
      v184 = __clz(__rbit64(v54)) | (v55 << 6);
      v185 = (*(v56 + 48) + 16 * v184);
      *(v0 + 7032) = *v185;
      *(v0 + 7040) = v185[1];
      *(v0 + 7048) = *(*(v56 + 56) + 8 * v184);
      v186 = *(**(v183 + v182) + 192);

      v227 = v186 + *v186;
      v187 = v186[1];
      v47 = swift_task_alloc();
      *(v0 + 7056) = v47;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v47 = v0;
      v48 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      goto LABEL_11;
    }

    v181 = 0;
    v56 = *(v0 + 6904);
    while (((63 - v53) >> 6) - 1 != v181)
    {
      v55 = v181 + 1;
      v54 = *(v56 + 8 * v181++ + 72);
      if (v54)
      {
        goto LABEL_40;
      }
    }

    v188 = *(v0 + 6776);

    v189 = Logger.logObject.getter();
    v190 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v189, v190))
    {
      v191 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v230 = v192;
      *v191 = 136315138;
      *(v191 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v230);
      _os_log_impl(&dword_264F1F000, v189, v190, "SwiftMLSClientCoordinator loading stored event states { clientIdentifier: %s }", v191, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v192);
      MEMORY[0x266755550](v192, -1, -1);
      MEMORY[0x266755550](v191, -1, -1);
    }

    v193 = *(v0 + 6664);
    v194 = (v193 + *(v0 + 6872));
    v196 = *(v193 + 80);
    v195 = *(v193 + 88);
    ObjectType = swift_getObjectType();
    v198 = v194[1];
    *(v0 + 6528) = *v194;
    *(v0 + 6536) = v198;
    v199 = *(v195 + 168);

    v228 = (v199 + *v199);
    v200 = v199[1];
    v201 = swift_task_alloc();
    *(v0 + 7400) = v201;
    *v201 = v0;
    v201[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

    return v228(v0 + 6592, v0 + 6528, ObjectType, v195);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 7000);
  v15 = *v1;
  *(*v1 + 7008) = v0;

  if (v0)
  {
    v4 = v2[874];
    v5 = v2[873];
    v6 = v2[869];
    v7 = v2[868];
    v8 = v2[863];
    v9 = v2[862];
    v10 = v2[852];

    v11 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v12 = v2[874];
    v13 = v2[873];
    v10 = v2[852];

    v11 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

{
  v1 = *(v0 + 6968);
  v2 = *(v0 + 6976) + 1;
  outlined destroy of NSObject?(v0 + 200, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (v2 != v1)
  {
    v8 = *(v0 + 6952);
    v9 = *(v0 + 6976) + 1;
    if (v9 < *(v8 + 16))
    {
      v220 = (v0 + 944);
      v222 = (v0 + 760);
      v216 = (v0 + 1312);
      v218 = (v0 + 1128);
      v213 = (v0 + 1680);
      v214 = (v0 + 1496);
      v211 = (v0 + 1864);
      v208 = (v0 + 2232);
      v209 = (v0 + 2048);
      v206 = (v0 + 2600);
      v207 = (v0 + 2416);
      v204 = (v0 + 3336);
      v205 = (v0 + 2784);
      *(v0 + 6976) = v9;
      v10 = *(v0 + 6664);
      v11 = v8 + 280 * v9;
      memcpy((v0 + 16), (v11 + 32), 0x118uLL);
      v226 = *(v0 + 272);
      v225 = *(v0 + 280);
      v224 = *(v0 + 288);
      *(v0 + 5728) = *(v11 + 216);
      v12 = *(v11 + 248);
      v13 = *(v11 + 264);
      v14 = *(v11 + 232);
      *(v0 + 5792) = *(v11 + 280);
      *(v0 + 5760) = v12;
      *(v0 + 5776) = v13;
      *(v0 + 5744) = v14;
      v15 = *(v11 + 80);
      v17 = *(v11 + 32);
      v16 = *(v11 + 48);
      *(v0 + 3184) = *(v11 + 64);
      *(v0 + 3200) = v15;
      *(v0 + 3152) = v17;
      *(v0 + 3168) = v16;
      v18 = *(v11 + 144);
      v20 = *(v11 + 96);
      v19 = *(v11 + 112);
      *(v0 + 3248) = *(v11 + 128);
      *(v0 + 3264) = v18;
      *(v0 + 3216) = v20;
      *(v0 + 3232) = v19;
      v22 = *(v11 + 176);
      v21 = *(v11 + 192);
      v23 = *(v11 + 160);
      *(v0 + 3328) = *(v11 + 208);
      *(v0 + 3296) = v22;
      *(v0 + 3312) = v21;
      *(v0 + 3280) = v23;
      v24 = *(v10 + 96);
      v25 = *(v11 + 32);
      v26 = *(v11 + 48);
      v27 = *(v11 + 80);
      *(v0 + 3000) = *(v11 + 64);
      *(v0 + 3016) = v27;
      *(v0 + 2968) = v25;
      *(v0 + 2984) = v26;
      v28 = *(v11 + 96);
      v29 = *(v11 + 112);
      v30 = *(v11 + 144);
      *(v0 + 3064) = *(v11 + 128);
      *(v0 + 3080) = v30;
      *(v0 + 3032) = v28;
      *(v0 + 3048) = v29;
      v31 = *(v11 + 160);
      v32 = *(v11 + 176);
      v33 = *(v11 + 192);
      *(v0 + 3144) = *(v11 + 208);
      *(v0 + 3112) = v32;
      *(v0 + 3128) = v33;
      *(v0 + 3096) = v31;
      v228 = v24;
      switch(_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v0 + 2968))
      {
        case 1u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v126 = *(v0 + 160);
          *(v0 + 2728) = *(v0 + 144);
          *(v0 + 2744) = v126;
          *(v0 + 2760) = *(v0 + 176);
          *(v0 + 2776) = *(v0 + 192);
          v127 = *(v0 + 96);
          *(v0 + 2664) = *(v0 + 80);
          *(v0 + 2680) = v127;
          v128 = *(v0 + 128);
          *(v0 + 2696) = *(v0 + 112);
          *(v0 + 2712) = v128;
          v129 = *(v0 + 32);
          *v206 = *(v0 + 16);
          *(v0 + 2616) = v129;
          v130 = *(v0 + 64);
          *(v0 + 2632) = *(v0 + 48);
          *(v0 + 2648) = v130;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v206, v131);
          break;
        case 2u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v102 = *(v0 + 160);
          *(v0 + 2912) = *(v0 + 144);
          *(v0 + 2928) = v102;
          *(v0 + 2944) = *(v0 + 176);
          *(v0 + 2960) = *(v0 + 192);
          v103 = *(v0 + 96);
          *(v0 + 2848) = *(v0 + 80);
          *(v0 + 2864) = v103;
          v104 = *(v0 + 128);
          *(v0 + 2880) = *(v0 + 112);
          *(v0 + 2896) = v104;
          v105 = *(v0 + 32);
          *v205 = *(v0 + 16);
          *(v0 + 2800) = v105;
          v106 = *(v0 + 64);
          *(v0 + 2816) = *(v0 + 48);
          *(v0 + 2832) = v106;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v205, v107);
          break;
        case 3u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v114 = *(v0 + 160);
          *(v0 + 3648) = *(v0 + 144);
          *(v0 + 3664) = v114;
          *(v0 + 3680) = *(v0 + 176);
          *(v0 + 3696) = *(v0 + 192);
          v115 = *(v0 + 96);
          *(v0 + 3584) = *(v0 + 80);
          *(v0 + 3600) = v115;
          v116 = *(v0 + 128);
          *(v0 + 3616) = *(v0 + 112);
          *(v0 + 3632) = v116;
          v117 = *(v0 + 32);
          *(v0 + 3520) = *(v0 + 16);
          *(v0 + 3536) = v117;
          v118 = *(v0 + 64);
          *(v0 + 3552) = *(v0 + 48);
          *(v0 + 3568) = v118;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 3520, v119);
          break;
        case 4u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v84 = *(v0 + 160);
          *(v0 + 888) = *(v0 + 144);
          *(v0 + 904) = v84;
          *(v0 + 920) = *(v0 + 176);
          *(v0 + 936) = *(v0 + 192);
          v85 = *(v0 + 96);
          *(v0 + 824) = *(v0 + 80);
          *(v0 + 840) = v85;
          v86 = *(v0 + 128);
          *(v0 + 856) = *(v0 + 112);
          *(v0 + 872) = v86;
          v87 = *(v0 + 32);
          *v222 = *(v0 + 16);
          *(v0 + 776) = v87;
          v88 = *(v0 + 64);
          *(v0 + 792) = *(v0 + 48);
          *(v0 + 808) = v88;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v222, v89);
          break;
        case 5u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v132 = *(v0 + 160);
          *(v0 + 704) = *(v0 + 144);
          *(v0 + 720) = v132;
          *(v0 + 736) = *(v0 + 176);
          *(v0 + 752) = *(v0 + 192);
          v133 = *(v0 + 96);
          *(v0 + 640) = *(v0 + 80);
          *(v0 + 656) = v133;
          v134 = *(v0 + 128);
          *(v0 + 672) = *(v0 + 112);
          *(v0 + 688) = v134;
          v135 = *(v0 + 32);
          *(v0 + 576) = *(v0 + 16);
          *(v0 + 592) = v135;
          v136 = *(v0 + 64);
          *(v0 + 608) = *(v0 + 48);
          *(v0 + 624) = v136;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 576, v137);
          break;
        case 6u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v144 = *(v0 + 160);
          *(v0 + 4200) = *(v0 + 144);
          *(v0 + 4216) = v144;
          *(v0 + 4232) = *(v0 + 176);
          *(v0 + 4248) = *(v0 + 192);
          v145 = *(v0 + 96);
          *(v0 + 4136) = *(v0 + 80);
          *(v0 + 4152) = v145;
          v146 = *(v0 + 128);
          *(v0 + 4168) = *(v0 + 112);
          *(v0 + 4184) = v146;
          v147 = *(v0 + 32);
          *(v0 + 4072) = *(v0 + 16);
          *(v0 + 4088) = v147;
          v148 = *(v0 + 64);
          *(v0 + 4104) = *(v0 + 48);
          *(v0 + 4120) = v148;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 4072, v149);
          break;
        case 7u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v120 = *(v0 + 160);
          *(v0 + 1072) = *(v0 + 144);
          *(v0 + 1088) = v120;
          *(v0 + 1104) = *(v0 + 176);
          *(v0 + 1120) = *(v0 + 192);
          v121 = *(v0 + 96);
          *(v0 + 1008) = *(v0 + 80);
          *(v0 + 1024) = v121;
          v122 = *(v0 + 128);
          *(v0 + 1040) = *(v0 + 112);
          *(v0 + 1056) = v122;
          v123 = *(v0 + 32);
          *v220 = *(v0 + 16);
          *(v0 + 960) = v123;
          v124 = *(v0 + 64);
          *(v0 + 976) = *(v0 + 48);
          *(v0 + 992) = v124;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v220, v125);
          break;
        case 8u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v156 = *(v0 + 160);
          *(v0 + 1256) = *(v0 + 144);
          *(v0 + 1272) = v156;
          *(v0 + 1288) = *(v0 + 176);
          *(v0 + 1304) = *(v0 + 192);
          v157 = *(v0 + 96);
          *(v0 + 1192) = *(v0 + 80);
          *(v0 + 1208) = v157;
          v158 = *(v0 + 128);
          *(v0 + 1224) = *(v0 + 112);
          *(v0 + 1240) = v158;
          v159 = *(v0 + 32);
          *v218 = *(v0 + 16);
          *(v0 + 1144) = v159;
          v160 = *(v0 + 64);
          *(v0 + 1160) = *(v0 + 48);
          *(v0 + 1176) = v160;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v218, v161);
          break;
        case 9u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v96 = *(v0 + 160);
          *(v0 + 1440) = *(v0 + 144);
          *(v0 + 1456) = v96;
          *(v0 + 1472) = *(v0 + 176);
          *(v0 + 1488) = *(v0 + 192);
          v97 = *(v0 + 96);
          *(v0 + 1376) = *(v0 + 80);
          *(v0 + 1392) = v97;
          v98 = *(v0 + 128);
          *(v0 + 1408) = *(v0 + 112);
          *(v0 + 1424) = v98;
          v99 = *(v0 + 32);
          *v216 = *(v0 + 16);
          *(v0 + 1328) = v99;
          v100 = *(v0 + 64);
          *(v0 + 1344) = *(v0 + 48);
          *(v0 + 1360) = v100;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v216, v101);
          break;
        case 0xAu:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v150 = *(v0 + 160);
          *(v0 + 1624) = *(v0 + 144);
          *(v0 + 1640) = v150;
          *(v0 + 1656) = *(v0 + 176);
          *(v0 + 1672) = *(v0 + 192);
          v151 = *(v0 + 96);
          *(v0 + 1560) = *(v0 + 80);
          *(v0 + 1576) = v151;
          v152 = *(v0 + 128);
          *(v0 + 1592) = *(v0 + 112);
          *(v0 + 1608) = v152;
          v153 = *(v0 + 32);
          *v214 = *(v0 + 16);
          *(v0 + 1512) = v153;
          v154 = *(v0 + 64);
          *(v0 + 1528) = *(v0 + 48);
          *(v0 + 1544) = v154;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v214, v155);
          break;
        case 0xBu:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v78 = *(v0 + 160);
          *(v0 + 1808) = *(v0 + 144);
          *(v0 + 1824) = v78;
          *(v0 + 1840) = *(v0 + 176);
          *(v0 + 1856) = *(v0 + 192);
          v79 = *(v0 + 96);
          *(v0 + 1744) = *(v0 + 80);
          *(v0 + 1760) = v79;
          v80 = *(v0 + 128);
          *(v0 + 1776) = *(v0 + 112);
          *(v0 + 1792) = v80;
          v81 = *(v0 + 32);
          *v213 = *(v0 + 16);
          *(v0 + 1696) = v81;
          v82 = *(v0 + 64);
          *(v0 + 1712) = *(v0 + 48);
          *(v0 + 1728) = v82;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v213, v83);
          break;
        case 0xCu:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v90 = *(v0 + 160);
          *(v0 + 1992) = *(v0 + 144);
          *(v0 + 2008) = v90;
          *(v0 + 2024) = *(v0 + 176);
          *(v0 + 2040) = *(v0 + 192);
          v91 = *(v0 + 96);
          *(v0 + 1928) = *(v0 + 80);
          *(v0 + 1944) = v91;
          v92 = *(v0 + 128);
          *(v0 + 1960) = *(v0 + 112);
          *(v0 + 1976) = v92;
          v93 = *(v0 + 32);
          *v211 = *(v0 + 16);
          *(v0 + 1880) = v93;
          v94 = *(v0 + 64);
          *(v0 + 1896) = *(v0 + 48);
          *(v0 + 1912) = v94;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v211, v95);
          break;
        case 0xDu:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v138 = *(v0 + 160);
          *(v0 + 2176) = *(v0 + 144);
          *(v0 + 2192) = v138;
          *(v0 + 2208) = *(v0 + 176);
          *(v0 + 2224) = *(v0 + 192);
          v139 = *(v0 + 96);
          *(v0 + 2112) = *(v0 + 80);
          *(v0 + 2128) = v139;
          v140 = *(v0 + 128);
          *(v0 + 2144) = *(v0 + 112);
          *(v0 + 2160) = v140;
          v141 = *(v0 + 32);
          *v209 = *(v0 + 16);
          *(v0 + 2064) = v141;
          v142 = *(v0 + 64);
          *(v0 + 2080) = *(v0 + 48);
          *(v0 + 2096) = v142;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v209, v143);
          break;
        case 0xEu:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v72 = *(v0 + 160);
          *(v0 + 2360) = *(v0 + 144);
          *(v0 + 2376) = v72;
          *(v0 + 2392) = *(v0 + 176);
          *(v0 + 2408) = *(v0 + 192);
          v73 = *(v0 + 96);
          *(v0 + 2296) = *(v0 + 80);
          *(v0 + 2312) = v73;
          v74 = *(v0 + 128);
          *(v0 + 2328) = *(v0 + 112);
          *(v0 + 2344) = v74;
          v75 = *(v0 + 32);
          *v208 = *(v0 + 16);
          *(v0 + 2248) = v75;
          v76 = *(v0 + 64);
          *(v0 + 2264) = *(v0 + 48);
          *(v0 + 2280) = v76;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v208, v77);
          break;
        case 0xFu:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v108 = *(v0 + 160);
          *(v0 + 3832) = *(v0 + 144);
          *(v0 + 3848) = v108;
          *(v0 + 3864) = *(v0 + 176);
          *(v0 + 3880) = *(v0 + 192);
          v109 = *(v0 + 96);
          *(v0 + 3768) = *(v0 + 80);
          *(v0 + 3784) = v109;
          v110 = *(v0 + 128);
          *(v0 + 3800) = *(v0 + 112);
          *(v0 + 3816) = v110;
          v111 = *(v0 + 32);
          *(v0 + 3704) = *(v0 + 16);
          *(v0 + 3720) = v111;
          v112 = *(v0 + 64);
          *(v0 + 3736) = *(v0 + 48);
          *(v0 + 3752) = v112;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 3704, v113);
          break;
        case 0x10u:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v66 = *(v0 + 160);
          *(v0 + 3464) = *(v0 + 144);
          *(v0 + 3480) = v66;
          *(v0 + 3496) = *(v0 + 176);
          *(v0 + 3512) = *(v0 + 192);
          v67 = *(v0 + 96);
          *(v0 + 3400) = *(v0 + 80);
          *(v0 + 3416) = v67;
          v68 = *(v0 + 128);
          *(v0 + 3432) = *(v0 + 112);
          *(v0 + 3448) = v68;
          v69 = *(v0 + 32);
          *v204 = *(v0 + 16);
          *(v0 + 3352) = v69;
          v70 = *(v0 + 64);
          *(v0 + 3368) = *(v0 + 48);
          *(v0 + 3384) = v70;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v204, v71);
          break;
        default:
          destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 2968, v34);
          v35 = *(v0 + 160);
          *(v0 + 2544) = *(v0 + 144);
          *(v0 + 2560) = v35;
          *(v0 + 2576) = *(v0 + 176);
          *(v0 + 2592) = *(v0 + 192);
          v36 = *(v0 + 96);
          *(v0 + 2480) = *(v0 + 80);
          *(v0 + 2496) = v36;
          v37 = *(v0 + 128);
          *(v0 + 2512) = *(v0 + 112);
          *(v0 + 2528) = v37;
          v38 = *(v0 + 32);
          *v207 = *(v0 + 16);
          *(v0 + 2432) = v38;
          v39 = *(v0 + 64);
          *(v0 + 2448) = *(v0 + 48);
          *(v0 + 2464) = v39;
          v41 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v207, v40);
          break;
      }

      v221 = v41[1];
      v223 = *v41;

      v217 = *(v0 + 6944);
      v231 = *(v0 + 6936);
      v162 = *(v0 + 6832);
      v163 = *(v0 + 6768);
      v164 = *(v0 + 6752);
      v165 = *(v0 + 6744);
      v166 = *(v0 + 6736);
      v219 = *(v0 + 6664);
      v210 = *(v0 + 6856);
      v212 = *(v0 + 6840);
      (*(v0 + 6824))(v163, *(v0 + 6776), v166);
      outlined init with copy of ServerBag.MLS(v0 + 5896, v0 + 6136);
      v167 = (*(v165 + 80) + 48) & ~*(v165 + 80);
      v168 = (v167 + v164 + 7) & 0xFFFFFFFFFFFFFFF8;
      v169 = (v167 + v164 + 191) & 0xFFFFFFFFFFFFFFF8;
      v170 = (v169 + 23) & 0xFFFFFFFFFFFFFFF8;
      v171 = (v170 + 79) & 0xFFFFFFFFFFFFFFF8;
      v215 = (v171 + 31) & 0xFFFFFFFFFFFFFFF8;
      v172 = swift_allocObject();
      *(v0 + 6992) = v172;
      *(v172 + 16) = v212;
      *(v172 + 32) = v210;
      (*(v165 + 32))(v172 + v167, v163, v166);
      v173 = v172 + v168;
      v174 = *(v0 + 3264);
      *(v173 + 96) = *(v0 + 3248);
      *(v173 + 112) = v174;
      v175 = *(v0 + 3232);
      *(v173 + 64) = *(v0 + 3216);
      *(v173 + 80) = v175;
      *(v173 + 176) = *(v0 + 3328);
      v176 = *(v0 + 3312);
      *(v173 + 144) = *(v0 + 3296);
      *(v173 + 160) = v176;
      *(v173 + 128) = *(v0 + 3280);
      v177 = *(v0 + 3168);
      *v173 = *(v0 + 3152);
      *(v173 + 16) = v177;
      v178 = *(v0 + 3200);
      *(v173 + 32) = *(v0 + 3184);
      *(v173 + 48) = v178;
      v179 = (v172 + v169);
      *v179 = v231;
      v179[1] = v217;
      v180 = v172 + v170;
      *(v180 + 64) = *(v0 + 5792);
      v181 = *(v0 + 5776);
      *(v180 + 32) = *(v0 + 5760);
      *(v180 + 48) = v181;
      v182 = *(v0 + 5744);
      *v180 = *(v0 + 5728);
      *(v180 + 16) = v182;
      v183 = v172 + v171;
      *v183 = v226;
      *(v183 + 8) = v225;
      *(v183 + 16) = v224;
      *(v172 + v215) = v219;
      outlined init with take of MLS.KeyUpdatePolicy((v0 + 6136), v172 + ((v215 + 15) & 0xFFFFFFFFFFFFFFF8));
      v184 = *(*v228 + 320);

      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 296, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVG_AC0dE5StateVSgAC12GroupVersionVtMR);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 3888, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 200, v0 + 5368, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
      v227 = (v184 + *v184);
      v185 = v184[1];
      v186 = swift_task_alloc();
      *(v0 + 7000) = v186;
      *v186 = v0;
      v186[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v187 = *(v0 + 6944);
      v188 = *(v0 + 6936);

      return (v227)(v188, v187, v223, v221, 0, &async function pointer to partial apply for closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v172);
    }

LABEL_48:
    __break(1u);
    JUMPOUT(0x265083A6CLL);
  }

  v3 = *(v0 + 6952);
  v4 = *(v0 + 6944);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5896));
  v5 = *(v0 + 6928);
  v6 = (*(v0 + 6920) - 1) & *(v0 + 6920);
  if (v6)
  {
    v7 = *(v0 + 6896);
    goto LABEL_11;
  }

  while (1)
  {
    v42 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v42 >= (((1 << *(v0 + 754)) + 63) >> 6))
    {
      break;
    }

    v7 = *(v0 + 6896);
    v6 = *(v7 + 8 * v42 + 64);
    ++v5;
    if (v6)
    {
      v5 = v42;
LABEL_11:
      *(v0 + 6928) = v5;
      *(v0 + 6920) = v6;
      v43 = *(v0 + 6912);
      v44 = *(v0 + 6664);
      v45 = __clz(__rbit64(v6)) | (v5 << 6);
      v46 = (*(v7 + 48) + 16 * v45);
      *(v0 + 6936) = *v46;
      *(v0 + 6944) = v46[1];
      *(v0 + 6952) = *(*(v7 + 56) + 8 * v45);
      v47 = *(**(v44 + v43) + 192);

      v229 = v47 + *v47;
      v48 = v47[1];
      v49 = swift_task_alloc();
      *(v0 + 6960) = v49;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v49 = v0;
      v50 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
LABEL_12:
      v49[1] = v50;

      __asm { BRAA            X8, X16 }
    }
  }

  v51 = *(v0 + 6904);
  v52 = *(v0 + 6896);

  v53 = *(v51 + 32);
  *(v0 + 755) = v53;
  v54 = -1;
  v55 = -1 << v53;
  if (-(-1 << v53) < 64)
  {
    v54 = ~(-1 << -v55);
  }

  v56 = v54 & *(v51 + 64);

  if (v56)
  {
    v57 = 0;
    v58 = *(v0 + 6904);
LABEL_22:
    *(v0 + 7024) = v57;
    *(v0 + 7016) = v56;
    v60 = *(v0 + 6912);
    v61 = *(v0 + 6664);
    v62 = __clz(__rbit64(v56)) | (v57 << 6);
    v63 = (*(v58 + 48) + 16 * v62);
    *(v0 + 7032) = *v63;
    *(v0 + 7040) = v63[1];
    *(v0 + 7048) = *(*(v58 + 56) + 8 * v62);
    v64 = *(**(v61 + v60) + 192);

    v229 = v64 + *v64;
    v65 = v64[1];
    v49 = swift_task_alloc();
    *(v0 + 7056) = v49;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    *v49 = v0;
    v50 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    goto LABEL_12;
  }

  v59 = 0;
  v58 = *(v0 + 6904);
  while (((63 - v55) >> 6) - 1 != v59)
  {
    v57 = v59 + 1;
    v56 = *(v58 + 8 * v59++ + 72);
    if (v56)
    {
      goto LABEL_22;
    }
  }

  v190 = *(v0 + 6776);

  v191 = Logger.logObject.getter();
  v192 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v233 = v194;
    *v193 = 136315138;
    *(v193 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v233);
    _os_log_impl(&dword_264F1F000, v191, v192, "SwiftMLSClientCoordinator loading stored event states { clientIdentifier: %s }", v193, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v194);
    MEMORY[0x266755550](v194, -1, -1);
    MEMORY[0x266755550](v193, -1, -1);
  }

  v195 = *(v0 + 6664);
  v196 = (v195 + *(v0 + 6872));
  v198 = *(v195 + 80);
  v197 = *(v195 + 88);
  ObjectType = swift_getObjectType();
  v200 = v196[1];
  *(v0 + 6528) = *v196;
  *(v0 + 6536) = v200;
  v201 = *(v197 + 168);

  v230 = (v201 + *v201);
  v202 = v201[1];
  v203 = swift_task_alloc();
  *(v0 + 7400) = v203;
  *v203 = v0;
  v203[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v230(v0 + 6592, v0 + 6528, ObjectType, v197);
}

{
  v2 = *v1;
  v3 = *(*v1 + 7056);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[881];
    v5 = v2[852];
    v6 = v2[803];

    v7 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v8 = v5;
  }

  else
  {
    v8 = v2[852];
    v7 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v1 = *(v0 + 7048);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 6216), v0 + 6296);
  v2 = *(v1 + 16);
  *(v0 + 7064) = v2;
  if (v2)
  {
    v3 = *(v0 + 7048);
    *(v0 + 7160) = vextq_s8(*(v0 + 7072), *(v0 + 7072), 8uLL);
    *(v0 + 7144) = vextq_s8(*(v0 + 7088), *(v0 + 7088), 8uLL);
    *(v0 + 7128) = vextq_s8(*(v0 + 7104), *(v0 + 7104), 8uLL);
    *(v0 + 7120) = 0;
    v4 = *(v0 + 7040);
    v5 = *(v0 + 6776);
    v7 = *(v3 + 48);
    v6 = *(v3 + 64);
    *(v0 + 4880) = *(v3 + 32);
    *(v0 + 4896) = v7;
    *(v0 + 4912) = v6;
    v9 = *(v3 + 96);
    v8 = *(v3 + 112);
    v10 = *(v3 + 80);
    *(v0 + 4976) = *(v3 + 128);
    *(v0 + 4944) = v9;
    *(v0 + 4960) = v8;
    *(v0 + 4928) = v10;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 4880, v0 + 4984, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    outlined init with copy of MLS.OutgoingEventState?(v0 + 4880, v0 + 5088, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 4880, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

    if (os_log_type_enabled(v11, v12))
    {
      v60 = *(v0 + 7040);
      v13 = *(v0 + 7032);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v63 = v15;
      *v14 = 136315650;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v63);
      *(v14 + 12) = 2080;
      v16 = *(v0 + 4888);
      v17 = *(v0 + 4880);

      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v63);

      *(v14 + 14) = v18;
      *(v14 + 22) = 2080;
      *(v14 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v60, &v63);
      _os_log_impl(&dword_264F1F000, v11, v12, "SwiftMLSClientCoordinator resending loaded incoming event { clientIdentifier: %s, event: %s, group: %s }", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v15, -1, -1);
      MEMORY[0x266755550](v14, -1, -1);
    }

    v19 = *(v0 + 6664);
    v20 = (v19 + *(v0 + 6872));
    *(v0 + 7176) = v19[12];
    v21 = *(v0 + 4960);
    *(v0 + 5256) = *(v0 + 4944);
    *(v0 + 5272) = v21;
    *(v0 + 5288) = *(v0 + 4976);
    v22 = *(v0 + 4896);
    *(v0 + 5192) = *(v0 + 4880);
    *(v0 + 5208) = v22;
    v23 = *(v0 + 4928);
    *(v0 + 5224) = *(v0 + 4912);
    *(v0 + 5240) = v23;
    outlined init with copy of ServerBag.MLS(v0 + 6296, v0 + 6096);
    *(v0 + 7184) = v19[10];
    *(v0 + 7192) = v19[11];
    *(v0 + 7200) = *v20;
    *(v0 + 7208) = v20[1];
    swift_unknownObjectRetain();
    v24 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v25 = 0;
    v26 = 0;

    return MEMORY[0x2822009F8](v24, v25, v26);
  }

  else
  {
    v27 = *(v0 + 7048);
    v28 = *(v0 + 7040);

    v29 = *(v0 + 7112);
    v30 = *(v0 + 7104);
    v57 = *(v0 + 7088);
    v61 = *(v0 + 7072);
    v24 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6296));
    v31 = *(v0 + 7024);
    v32 = *(v0 + 7016);
    *(v0 + 7112) = v29;
    *(v0 + 7104) = v30;
    *(v0 + 7088) = v57;
    *(v0 + 7072) = v61;
    v33 = (v32 - 1) & v32;
    if (v33)
    {
      v24 = *(v0 + 6904);
      goto LABEL_13;
    }

    while (1)
    {
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v24, v25, v26);
      }

      v24 = *(v0 + 6904);
      if (v34 >= (((1 << *(v0 + 755)) + 63) >> 6))
      {
        break;
      }

      v33 = *(v24 + 8 * v34 + 64);
      ++v31;
      if (v33)
      {
        v31 = v34;
LABEL_13:
        *(v0 + 7024) = v31;
        *(v0 + 7016) = v33;
        v35 = *(v0 + 6912);
        v36 = *(v0 + 6664);
        v37 = __clz(__rbit64(v33)) | (v31 << 6);
        v38 = (*(v24 + 48) + 16 * v37);
        *(v0 + 7032) = *v38;
        *(v0 + 7040) = v38[1];
        *(v0 + 7048) = *(*(v24 + 56) + 8 * v37);
        v39 = *(**(v36 + v35) + 192);

        v58 = v39 + *v39;
        v40 = v39[1];
        v41 = swift_task_alloc();
        *(v0 + 7056) = v41;
        lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
        *v41 = v0;
        v41[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

        __asm { BRAA            X8, X16 }
      }
    }

    v42 = *(v0 + 6776);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v63 = v46;
      *v45 = 136315138;
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v63);
      _os_log_impl(&dword_264F1F000, v43, v44, "SwiftMLSClientCoordinator loading stored event states { clientIdentifier: %s }", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266755550](v46, -1, -1);
      MEMORY[0x266755550](v45, -1, -1);
    }

    v47 = *(v0 + 6664);
    v48 = (v47 + *(v0 + 6872));
    v50 = *(v47 + 80);
    v49 = *(v47 + 88);
    ObjectType = swift_getObjectType();
    v52 = v48[1];
    *(v0 + 6528) = *v48;
    *(v0 + 6536) = v52;
    v53 = *(v49 + 168);

    v59 = (v53 + *v53);
    v54 = v53[1];
    v55 = swift_task_alloc();
    *(v0 + 7400) = v55;
    *v55 = v0;
    v55[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

    return v59(v0 + 6592, v0 + 6528, ObjectType, v49);
  }
}

{
  v1 = v0[880];
  v2 = v0[765];
  v3 = v0[766];
  __swift_project_boxed_opaque_existential_1(v0 + 762, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[902] = v6;
  *v6 = v0;
  v6[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v8(v2, v3);
}

{
  v1 = v0[765];
  v2 = v0[766];
  __swift_project_boxed_opaque_existential_1(v0 + 762, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[905] = v5;
  *v5 = v0;
  v5[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v7(v1, v2);
}

{
  v1 = v0[898];
  swift_unknownObjectRelease();
  v0[924] = v0[903];
  v2 = v0[880];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 762);

  v3 = v0[852];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v3, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 7256);
  v10 = *v1;
  *(*v1 + 7264) = v0;

  if (v0)
  {
    v4 = v2[881];
    v5 = v2[880];
    v6 = v2[863];
    v7 = v2[862];

    v8 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v8 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = v0[840];
  v2 = v0[839];
  v3 = v0[838];
  v0[909] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[910] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[765];
  v6 = v0[766];
  __swift_project_boxed_opaque_existential_1(v0 + 762, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[911] = v9;
  *v9 = v0;
  v9[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v11(v5, v6);
}

{
  v1 = v0[765];
  v2 = v0[766];
  __swift_project_boxed_opaque_existential_1(v0 + 762, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[914] = v5;
  *v5 = v0;
  v5[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v7(v1, v2);
}

{
  v1 = v0[898];
  swift_unknownObjectRelease();
  v0[924] = v0[908];
  v2 = v0[880];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 762);

  v3 = v0[852];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v3, 0);
}

{
  v1 = v0[898];
  swift_unknownObjectRelease();
  v2 = v0[913];
  v3 = v0[910];
  v4 = v0[909];
  if (v2 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[913];
  }

  if (v2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[912];
  }

  v0[924] = v0[915];
  v7 = v0[880];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 762);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v6, v5);
  v8 = v0[852];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v8, 0);
}

{
  v1 = *(v0 + 7360);
  v20 = *(v0 + 7336);
  v21 = *(v0 + 7368);
  v2 = *(v0 + 7328);
  v3 = *(v0 + 7304);
  v4 = *(v0 + 7280);
  v5 = *(v0 + 7272);
  v6 = *(v0 + 7248);
  v7 = *(v0 + 7232);
  v8 = *(v0 + 7184);
  v23 = *(v0 + 7176);
  v9 = *(v0 + 7040);
  v17 = v9;
  v10 = *(v0 + 7032);
  v18 = v10;
  v19 = *(v0 + 7296);
  swift_unknownObjectRelease();
  *(v0 + 4464) = v10;
  *(v0 + 4472) = v9;
  if (v2 >> 60 == 15)
  {
    v2 = 0xC000000000000000;
    v11 = 0;
  }

  else
  {
    v11 = v20;
  }

  if (v3 >> 60 == 15)
  {
    v3 = 0xC000000000000000;
    v12 = 0;
  }

  else
  {
    v12 = v19;
  }

  if ((v7 & 0x100000000) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  *(v0 + 4480) = v7;
  *(v0 + 4488) = v7;
  *(v0 + 4496) = v6;
  *(v0 + 4504) = v5;
  *(v0 + 4512) = v4;
  *(v0 + 4520) = v12;
  *(v0 + 4528) = v3;
  *(v0 + 4536) = v11;
  *(v0 + 4544) = v2;
  *(v0 + 4552) = v21;
  *(v0 + 4560) = v1;
  outlined init with copy of MLS.Group(v0 + 4464, v0 + 4568);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6096));
  *(v0 + 4360) = v18;
  *(v0 + 4368) = v17;
  *(v0 + 4376) = v7;
  *(v0 + 4384) = v7;
  *(v0 + 4392) = v6;
  *(v0 + 4400) = v5;
  *(v0 + 4408) = v4;
  *(v0 + 4416) = v12;
  *(v0 + 4424) = v3;
  *(v0 + 4432) = v11;
  *(v0 + 4440) = v2;
  *(v0 + 4448) = v21;
  *(v0 + 4456) = v1;
  outlined destroy of MLS.Group(v0 + 4360);
  *(v0 + 4704) = *(v0 + 4496);
  *(v0 + 4688) = *(v0 + 4480);
  *(v0 + 4672) = *(v0 + 4464);
  *(v0 + 4768) = *(v0 + 4560);
  *(v0 + 4752) = *(v0 + 4544);
  *(v0 + 4736) = *(v0 + 4528);
  *(v0 + 4720) = *(v0 + 4512);
  v22 = (*v23 + 384);
  v24 = (*v22 + **v22);
  v13 = (*v22)[1];
  v14 = swift_task_alloc();
  *(v0 + 7376) = v14;
  *v14 = v0;
  v14[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  v15 = *(v0 + 7176);

  return (v24)(v0 + 5192, v0 + 4672, 0, 0);
}

{
  v2 = *v1;
  v3 = *v1 + 4672;
  v4 = *(*v1 + 7376);
  v24 = *v1;
  *(*v1 + 7384) = v0;

  if (v0)
  {
    v5 = *(v2 + 7048);
    v6 = *(v2 + 7040);
    v7 = *(v2 + 6904);
    v8 = *(v2 + 6896);
    v9 = *(v2 + 6816);
    v11 = *(v3 + 64);
    v10 = *(v3 + 80);
    v12 = *(v3 + 48);
    *(v2 + 4872) = *(v3 + 96);
    v14 = *(v3 + 16);
    v13 = *(v3 + 32);
    *(v2 + 4776) = *v3;
    *(v2 + 4792) = v14;
    *(v2 + 4808) = v13;
    *(v2 + 4824) = v12;
    *(v2 + 4840) = v11;
    *(v2 + 4856) = v10;
    outlined destroy of MLS.Group(v2 + 4776);

    v15 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v16 = v9;
  }

  else
  {
    v17 = *(v2 + 6816);
    v19 = *(v3 + 16);
    v18 = *(v3 + 32);
    *(v2 + 4256) = *v3;
    *(v2 + 4272) = v19;
    *(v2 + 4288) = v18;
    v21 = *(v3 + 64);
    v20 = *(v3 + 80);
    v22 = *(v3 + 96);
    *(v2 + 4304) = *(v3 + 48);
    *(v2 + 4352) = v22;
    *(v2 + 4336) = v20;
    *(v2 + 4320) = v21;
    outlined destroy of MLS.Group(v2 + 4256);
    v15 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v16 = v17;
  }

  return MEMORY[0x2822009F8](v15, v16, 0);
}

{
  v1 = v0[898];
  swift_unknownObjectRelease();
  v2 = v0[916];
  v3 = v0[913];
  v4 = v0[910];
  v5 = v0[909];
  if (v2 >> 60 == 15)
  {
    v6 = 0xC000000000000000;
  }

  else
  {
    v6 = v0[916];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = v0[917];
  }

  if (v3 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = v0[913];
  }

  if (v3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = v0[912];
  }

  v0[924] = v0[919];
  v10 = v0[880];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 762);

  outlined consume of Data._Representation(v5, v4);
  outlined consume of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v7, v6);
  v11 = v0[852];

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v11, 0);
}

{
  v1 = v0[863];
  v20 = v0[847];
  v2 = v0[843];
  v3 = v0[842];
  v4 = v0[833];
  v5 = v0[832];
  v6 = v0[831];
  v7 = v0[830];
  v8 = v0[829];
  v9 = v0[827];
  v10 = v0[825];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  outlined destroy of MLS.SwiftMLSClientPicker(v6);
  outlined destroy of MLS.KeyPackageProvider(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 787);
  (*(v2 + 8))(v20, v3);
  outlined destroy of NSObject?((v0 + 610), &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v11 = v0[924];
  v12 = v0[847];
  v13 = v0[846];
  v14 = v0[845];
  v15 = v0[841];
  v16 = v0[840];
  v17 = v0[837];

  v18 = v0[1];

  return v18();
}

{
  v1 = (v0 + 4880);
  v2 = *(v0 + 7064);
  v3 = *(v0 + 7120) + 1;
  v4 = outlined destroy of NSObject?(v0 + 4880, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (v3 == v2)
  {
    v7 = *(v0 + 7048);
    v8 = *(v0 + 7040);

    v9 = *(v0 + 7328);
    v10 = *(v0 + 7304);
    v11 = *(v0 + 7280);
    v12 = *(v0 + 7272);
    if (v9 >> 60 == 15)
    {
      v13 = 0xC000000000000000;
    }

    else
    {
      v13 = *(v0 + 7328);
    }

    if (v9 >> 60 == 15)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v0 + 7336);
    }

    if (v10 >> 60 == 15)
    {
      v15 = 0xC000000000000000;
    }

    else
    {
      v15 = *(v0 + 7304);
    }

    if (v10 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v0 + 7296);
    }

    v4 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6296));
    v17 = *(v0 + 7024);
    v18 = *(v0 + 7016);
    *(v0 + 7112) = v13;
    *(v0 + 7104) = v14;
    *(v0 + 7096) = v15;
    *(v0 + 7088) = v16;
    *(v0 + 7080) = v11;
    *(v0 + 7072) = v12;
    v19 = (v18 - 1) & v18;
    if (v19)
    {
      v4 = *(v0 + 6904);
      goto LABEL_28;
    }

    while (1)
    {
      v49 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      v4 = *(v0 + 6904);
      if (v49 >= (((1 << *(v0 + 755)) + 63) >> 6))
      {
        break;
      }

      v19 = *(v4 + v49 + 8);
      ++v17;
      if (v19)
      {
        v17 = v49;
LABEL_28:
        *(v0 + 7024) = v17;
        *(v0 + 7016) = v19;
        v50 = *(v0 + 6912);
        v51 = *(v0 + 6664);
        v52 = __clz(__rbit64(v19)) | (v17 << 6);
        v53 = (*(v4 + 6) + 16 * v52);
        *(v0 + 7032) = *v53;
        *(v0 + 7040) = v53[1];
        *(v0 + 7048) = *(*(v4 + 7) + 8 * v52);
        v54 = *(**(v51 + v50) + 192);

        v73 = v54 + *v54;
        v55 = v54[1];
        v56 = swift_task_alloc();
        *(v0 + 7056) = v56;
        lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
        *v56 = v0;
        v56[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

        __asm { BRAA            X8, X16 }
      }
    }

    v57 = *(v0 + 6776);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v77 = v61;
      *v60 = 136315138;
      *(v60 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v77);
      _os_log_impl(&dword_264F1F000, v58, v59, "SwiftMLSClientCoordinator loading stored event states { clientIdentifier: %s }", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x266755550](v61, -1, -1);
      MEMORY[0x266755550](v60, -1, -1);
    }

    v62 = *(v0 + 6664);
    v63 = (v62 + *(v0 + 6872));
    v65 = *(v62 + 80);
    v64 = *(v62 + 88);
    ObjectType = swift_getObjectType();
    v67 = v63[1];
    *(v0 + 6528) = *v63;
    *(v0 + 6536) = v67;
    v68 = *(v64 + 168);

    v74 = (v68 + *v68);
    v69 = v68[1];
    v70 = swift_task_alloc();
    *(v0 + 7400) = v70;
    *v70 = v0;
    v70[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

    return v74(v0 + 6592, v0 + 6528, ObjectType, v64);
  }

  else
  {
    v20 = *(v0 + 7048);
    v21 = *(v0 + 7120) + 1;
    if (v21 >= *(v20 + 16))
    {
LABEL_37:
      __break(1u);
    }

    else
    {
      v22 = *(v0 + 7304);
      v23 = *(v0 + 7296);
      v24 = *(v0 + 7280);
      *(v0 + 7168) = *(v0 + 7272);
      *(v0 + 7160) = v24;
      v25 = *(v0 + 7328);
      v26 = vdupq_lane_s64(v25.i64[0], 0);
      v26.i64[0] = v22;
      *v26.i8 = vmovn_s64(vcgtq_u64(v26, vdupq_n_s64(0xEFFFFFFFFFFFFFFFLL)));
      v27 = vdup_lane_s32(*v26.i8, 1);
      if (v26.i8[0])
      {
        v22 = 0xC000000000000000;
        v23 = 0;
      }

      *(v0 + 7152) = v23;
      *(v0 + 7144) = v22;
      v28.i64[0] = v27.i32[0];
      v28.i64[1] = v27.i32[1];
      *(v0 + 7128) = vbslq_s8(v28, xmmword_2651CBF00, v25);
      *(v0 + 7120) = v21;
      v29 = *(v0 + 7040);
      v30 = *(v0 + 6776);
      v31 = v20 + 104 * v21;
      v33 = *(v31 + 48);
      v32 = *(v31 + 64);
      *v1 = *(v31 + 32);
      *(v0 + 4896) = v33;
      *(v0 + 4912) = v32;
      v35 = *(v31 + 96);
      v34 = *(v31 + 112);
      v36 = *(v31 + 80);
      *(v0 + 4976) = *(v31 + 128);
      *(v0 + 4944) = v35;
      *(v0 + 4960) = v34;
      *(v0 + 4928) = v36;
      outlined init with copy of MLS.OutgoingEventState?(v0 + 4880, v0 + 4984, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

      outlined init with copy of MLS.OutgoingEventState?(v0 + 4880, v0 + 5088, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      outlined destroy of NSObject?(v0 + 4880, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

      if (os_log_type_enabled(v37, v38))
      {
        v72 = *(v0 + 7032);
        v75 = *(v0 + 7040);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v77 = v40;
        *v39 = 136315650;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v77);
        *(v39 + 12) = 2080;
        v41 = *(v0 + 4888);
        v42 = *(v0 + 4880);

        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, &v77);

        *(v39 + 14) = v43;
        *(v39 + 22) = 2080;
        *(v39 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v75, &v77);
        _os_log_impl(&dword_264F1F000, v37, v38, "SwiftMLSClientCoordinator resending loaded incoming event { clientIdentifier: %s, event: %s, group: %s }", v39, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v40, -1, -1);
        MEMORY[0x266755550](v39, -1, -1);
      }

      v44 = *(v0 + 6664);
      v45 = (v44 + *(v0 + 6872));
      *(v0 + 7176) = v44[12];
      v46 = *(v0 + 4960);
      *(v0 + 5256) = *(v0 + 4944);
      *(v0 + 5272) = v46;
      *(v0 + 5288) = *(v0 + 4976);
      v47 = *(v0 + 4896);
      *(v0 + 5192) = *v1;
      *(v0 + 5208) = v47;
      v48 = *(v0 + 4928);
      *(v0 + 5224) = *(v0 + 4912);
      *(v0 + 5240) = v48;
      outlined init with copy of ServerBag.MLS(v0 + 6296, v0 + 6096);
      *(v0 + 7184) = v44[10];
      *(v0 + 7192) = v44[11];
      *(v0 + 7200) = *v45;
      *(v0 + 7208) = v45[1];
      swift_unknownObjectRetain();
      v4 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v5 = 0;
      v6 = 0;
    }

    return MEMORY[0x2822009F8](v4, v5, v6);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 7400);
  v4 = *v1;
  v2[926] = v0;

  v5 = v2[817];
  if (v0)
  {
    v6 = v2[863];
    v7 = v2[862];
    v8 = v2[852];

    v9 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v10 = v8;
  }

  else
  {
    v11 = v2[852];

    v9 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v10 = v11;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

{
  v1 = *(v0 + 6904);
  v2 = *(v0 + 6896);
  v3 = *(v0 + 6776);
  v4 = *(v0 + 6592);
  *(v0 + 7416) = v4;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 6904);
  v9 = *(v0 + 6896);
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v98 = v11;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v98);
    *(v10 + 12) = 2048;
    v12 = *(v9 + 16);

    *(v10 + 14) = v12;

    _os_log_impl(&dword_264F1F000, v5, v6, "SwiftMLSClientCoordinator loaded event states { clientIdentifier: %s, outgoingEventStateCount: %ld }", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  else
  {
    v13 = *(v0 + 6896);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v14 = *(v4 + 32);
  *(v0 + 756) = v14;
  v15 = -1;
  v16 = -1 << v14;
  if (-v16 < 64)
  {
    v15 = ~(-1 << -v16);
  }

  v17 = v15 & *(v4 + 64);
  if (v17)
  {
    v18 = 0;
    v19 = *(v0 + 7416);
LABEL_11:
    *(v0 + 7432) = v18;
    *(v0 + 7424) = v17;
    v22 = __clz(__rbit64(v17)) | (v18 << 6);
    v23 = (*(v19 + 48) + 16 * v22);
    *(v0 + 7440) = *v23;
    *(v0 + 7448) = v23[1];
    v24 = *(*(v19 + 56) + 8 * v22);
    *(v0 + 7456) = v24;
    v25 = *(v24 + 16);
    *(v0 + 7464) = v25;
    if (!v25)
    {
      v63 = *(v0 + 6912);
      v64 = *(v0 + 6664);

      v65 = *(**(v64 + v63) + 192);
      v95 = v65 + *v65;
      v66 = v65[1];
      v67 = swift_task_alloc();
      *(v0 + 7472) = v67;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v67 = v0;
      v67[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v68 = *(v0 + 7448);
      v69 = *(v0 + 7440);

      __asm { BRAA            X8, X16 }
    }

    *(v0 + 7488) = 0;
    v26 = *(v24 + 16);

    if (v26)
    {
      v28 = (v0 + 5296);
      v29 = *(v0 + 6776);
      *(v0 + 5296) = *(v24 + 32);
      v31 = *(v24 + 64);
      v30 = *(v24 + 80);
      v32 = *(v24 + 48);
      *(v0 + 5360) = *(v24 + 96);
      *(v0 + 5328) = v31;
      *(v0 + 5344) = v30;
      *(v0 + 5312) = v32;
      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5656);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5584);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v0 + 5296);

      if (os_log_type_enabled(v33, v34))
      {
        v91 = *(v0 + 7440);
        v93 = *(v0 + 7448);
        v35 = *(v0 + 5336);
        v36 = *(v0 + 5344);
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v98 = v38;
        *v37 = 136315650;
        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v98);
        *(v37 + 12) = 2080;

        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v98);

        *(v37 + 14) = v39;
        *(v37 + 22) = 2080;
        *(v37 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v98);
        _os_log_impl(&dword_264F1F000, v33, v34, "SwiftMLSClientCoordinator enqueueing loaded outgoing event state { clientIdentifier: %s, event: %s, group: %s }", v37, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v38, -1, -1);
        MEMORY[0x266755550](v37, -1, -1);
      }

      v88 = *(v0 + 7448);
      v94 = *(v0 + 7440);
      v40 = *(v0 + 6832);
      v41 = *(v0 + 6824);
      v42 = *(v0 + 6776);
      v43 = *(v0 + 6760);
      v44 = *(v0 + 6752);
      v45 = *(v0 + 6744);
      v46 = *(v0 + 6736);
      v86 = *(v0 + 6664);
      v84 = *(v86 + 96);
      v47 = *(v0 + 5344);
      *(v0 + 5544) = *(v0 + 5328);
      *(v0 + 5560) = v47;
      *(v0 + 5576) = *(v0 + 5360);
      v48 = *(v0 + 5312);
      *(v0 + 5512) = *v28;
      *(v0 + 5528) = v48;
      v49 = *(v0 + 6856);
      v82 = v49;
      v83 = *(v0 + 6840);
      v41(v43, v42, v46);
      v50 = (*(v45 + 80) + 48) & ~*(v45 + 80);
      v51 = (v44 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = (v51 + 79) & 0xFFFFFFFFFFFFFFF8;
      v53 = swift_allocObject();
      *(v0 + 7496) = v53;
      *(v53 + 16) = v83;
      *(v53 + 32) = v82;
      (*(v45 + 32))(v53 + v50, v43, v46);
      v54 = v53 + v51;
      *(v54 + 64) = *(v0 + 5360);
      v55 = *(v0 + 5344);
      *(v54 + 32) = *(v0 + 5328);
      *(v54 + 48) = v55;
      v56 = *(v0 + 5312);
      *v54 = *v28;
      *(v54 + 16) = v56;
      v57 = (v53 + v52);
      *v57 = v94;
      v57[1] = v88;
      *(v53 + ((v52 + 23) & 0xFFFFFFFFFFFFFFF8)) = v86;
      v58 = *(*v84 + 352);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5440);
      v89 = (v58 + *v58);
      v59 = v58[1];
      v60 = swift_task_alloc();
      *(v0 + 7504) = v60;
      *v60 = v0;
      v60[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v61 = *(v0 + 7448);
      v62 = *(v0 + 7440);

      return v89(v0 + 5512, v62, v61, &async function pointer to partial apply for closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v53);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = 0;
    v21 = ((63 - v16) >> 6) - 1;
    while (v21 != v20)
    {
      v18 = v20 + 1;
      v19 = *(v0 + 7416);
      v17 = *(v19 + 8 * v20++ + 72);
      if (v17)
      {
        goto LABEL_11;
      }
    }

    v70 = *(v0 + 7416);
    v71 = *(v0 + 6776);
    v85 = *(v0 + 6768);
    v87 = *(v0 + 6760);
    v72 = *(v0 + 6744);
    v73 = *(v0 + 6736);
    v90 = *(v0 + 6728);
    v92 = *(v0 + 6720);
    v96 = *(v0 + 6696);
    v74 = *(v0 + 6656);
    v75 = *(v0 + 6648);
    v76 = *(v0 + 6640);
    v77 = *(v0 + 6632);
    v78 = *(v0 + 6616);
    v79 = *(v0 + 6600);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    outlined destroy of MLS.SwiftMLSClientPicker(v75);
    outlined destroy of MLS.KeyPackageProvider(v76);
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    (*(v72 + 8))(v71, v73);

    v80 = *(v0 + 8);
    v81 = *(v0 + 6664);

    return v80(v81);
  }

  return result;
}

{
  v2 = *v1;
  v3 = *(*v1 + 7472);
  v7 = *v1;
  *(*v1 + 7480) = v0;

  v4 = *(v2 + 6816);
  if (v0)
  {
    v5 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v5 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 7504);
  v13 = *v1;
  *(*v1 + 7512) = v0;

  if (v0)
  {
    v4 = v2[937];
    v5 = v2[932];
    v6 = v2[931];
    v7 = v2[852];

    v8 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v9 = v7;
  }

  else
  {
    v10 = v2[937];
    v11 = v2[852];

    v8 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v9 = v11;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

{
  v1 = (v0 + 5296);
  v2 = *(v0 + 7464);
  v3 = *(v0 + 7488) + 1;
  result = outlined destroy of MLS.OutgoingEventState(v0 + 5296);
  if (v3 == v2)
  {
    v5 = *(v0 + 7456);

    v6 = *(**(*(v0 + 6664) + *(v0 + 6912)) + 192);
    v56 = v6 + *v6;
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 7472) = v8;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    *v8 = v0;
    v8[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v9 = *(v0 + 7448);
    v10 = *(v0 + 7440);

    __asm { BRAA            X8, X16 }
  }

  v11 = *(v0 + 7488) + 1;
  *(v0 + 7488) = v11;
  v12 = *(v0 + 7456);
  if (v11 >= *(v12 + 16))
  {
    __break(1u);
  }

  else
  {
    v13 = *(v0 + 7448);
    v14 = *(v0 + 6776);
    v15 = v12 + 72 * v11;
    *v1 = *(v15 + 32);
    v17 = *(v15 + 64);
    v16 = *(v15 + 80);
    v18 = *(v15 + 48);
    *(v0 + 5360) = *(v15 + 96);
    *(v0 + 5328) = v17;
    *(v0 + 5344) = v16;
    *(v0 + 5312) = v18;
    outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5656);

    outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5584);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    outlined destroy of MLS.OutgoingEventState(v0 + 5296);

    if (os_log_type_enabled(v19, v20))
    {
      v55 = *(v0 + 7440);
      v57 = *(v0 + 7448);
      v21 = *(v0 + 5336);
      v22 = *(v0 + 5344);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v60 = v24;
      *v23 = 136315650;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v60);
      *(v23 + 12) = 2080;

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v60);

      *(v23 + 14) = v25;
      *(v23 + 22) = 2080;
      *(v23 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v60);
      _os_log_impl(&dword_264F1F000, v19, v20, "SwiftMLSClientCoordinator enqueueing loaded outgoing event state { clientIdentifier: %s, event: %s, group: %s }", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v24, -1, -1);
      MEMORY[0x266755550](v23, -1, -1);
    }

    v53 = *(v0 + 7448);
    v58 = *(v0 + 7440);
    v26 = *(v0 + 6832);
    v27 = *(v0 + 6824);
    v28 = *(v0 + 6776);
    v29 = *(v0 + 6760);
    v30 = *(v0 + 6752);
    v31 = *(v0 + 6744);
    v32 = *(v0 + 6736);
    v52 = *(v0 + 6664);
    v51 = *(v52 + 96);
    v33 = *(v0 + 5344);
    *(v0 + 5544) = *(v0 + 5328);
    *(v0 + 5560) = v33;
    *(v0 + 5576) = *(v0 + 5360);
    v34 = *(v0 + 5312);
    *(v0 + 5512) = *v1;
    *(v0 + 5528) = v34;
    v35 = *(v0 + 6856);
    v49 = v35;
    v50 = *(v0 + 6840);
    v27(v29, v28, v32);
    v36 = (*(v31 + 80) + 48) & ~*(v31 + 80);
    v37 = (v30 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 79) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v0 + 7496) = v39;
    *(v39 + 16) = v50;
    *(v39 + 32) = v49;
    (*(v31 + 32))(v39 + v36, v29, v32);
    v40 = v39 + v37;
    *(v40 + 64) = *(v0 + 5360);
    v41 = *(v0 + 5344);
    *(v40 + 32) = *(v0 + 5328);
    *(v40 + 48) = v41;
    v42 = *(v0 + 5312);
    *v40 = *v1;
    *(v40 + 16) = v42;
    v43 = (v39 + v38);
    *v43 = v58;
    v43[1] = v53;
    *(v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8)) = v52;
    v44 = *(*v51 + 352);

    outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5440);
    v54 = (v44 + *v44);
    v45 = v44[1];
    v46 = swift_task_alloc();
    *(v0 + 7504) = v46;
    *v46 = v0;
    v46[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v47 = *(v0 + 7448);
    v48 = *(v0 + 7440);

    return v54(v0 + 5512, v48, v47, &async function pointer to partial apply for closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v39);
  }

  return result;
}

{
  v23 = v0;
  v1 = *(v0 + 7448);
  v2 = *(v0 + 6776);
  v3 = *(v0 + 6696);
  v4 = *(v0 + 6688);
  v5 = *(v0 + 6680);
  outlined init with take of MLS.KeyUpdatePolicy((v0 + 5936), v0 + 5976);
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  *(v0 + 7520) = v6;
  *(v0 + 7528) = v7;
  (*(v4 + 8))(v3, v5);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 7448);
    v12 = *(v0 + 7440);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v22);
    *(v13 + 12) = 2080;
    *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v22);
    _os_log_impl(&dword_264F1F000, v9, v10, "SwiftMLSClientCoordinator dequeuing loaded group version { group: %s, identifier: %s }", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  v15 = *(v0 + 6664);
  *(v0 + 7536) = v15[12];
  v20 = (*v15 + 344);
  v21 = (*v20 + **v20);
  v16 = (*v20)[1];
  v17 = swift_task_alloc();
  *(v0 + 7544) = v17;
  *v17 = v0;
  v17[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  v18 = *(v0 + 6664);

  return v21(v0 + 6480, v0 + 5976);
}

{
  v2 = *v1;
  v3 = *(*v1 + 7544);
  v9 = *v1;
  *(*v1 + 7552) = v0;

  if (v0)
  {
    v4 = *(v2 + 7528);
    v5 = *(v2 + 6816);

    v6 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 6816);
    v6 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v1 = *(v0 + 7536);
  v2 = *(v0 + 7528);
  v3 = *(v0 + 7520);
  v4 = *(v0 + 7448);
  v5 = *(v0 + 7440);
  v6 = *(v0 + 6488);
  v7 = *(v0 + 6496);
  *(v0 + 6504) = *(v0 + 6480);
  *(v0 + 6512) = v6;
  *(v0 + 6520) = v7;
  (*(*v1 + 360))(v0 + 6504, v5, v4, v3, v2, 0);

  result = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));
  v9 = *(v0 + 7432);
  v10 = (*(v0 + 7424) - 1) & *(v0 + 7424);
  if (v10)
  {
    v11 = *(v0 + 7416);
LABEL_7:
    *(v0 + 7432) = v9;
    *(v0 + 7424) = v10;
    v13 = __clz(__rbit64(v10)) | (v9 << 6);
    v14 = (*(v11 + 48) + 16 * v13);
    *(v0 + 7440) = *v14;
    *(v0 + 7448) = v14[1];
    v15 = *(*(v11 + 56) + 8 * v13);
    *(v0 + 7456) = v15;
    v16 = *(v15 + 16);
    *(v0 + 7464) = v16;
    if (!v16)
    {
      v53 = *(v0 + 6912);
      v54 = *(v0 + 6664);

      v55 = *(**(v54 + v53) + 192);
      v85 = v55 + *v55;
      v56 = v55[1];
      v57 = swift_task_alloc();
      *(v0 + 7472) = v57;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v57 = v0;
      v57[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v58 = *(v0 + 7448);
      v59 = *(v0 + 7440);

      __asm { BRAA            X8, X16 }
    }

    *(v0 + 7488) = 0;
    v17 = *(v15 + 16);

    if (v17)
    {
      v18 = (v0 + 5296);
      v19 = *(v0 + 6776);
      *(v0 + 5296) = *(v15 + 32);
      v21 = *(v15 + 64);
      v20 = *(v15 + 80);
      v22 = *(v15 + 48);
      *(v0 + 5360) = *(v15 + 96);
      *(v0 + 5328) = v21;
      *(v0 + 5344) = v20;
      *(v0 + 5312) = v22;
      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5656);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5584);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v0 + 5296);

      if (os_log_type_enabled(v23, v24))
      {
        v81 = *(v0 + 7440);
        v83 = *(v0 + 7448);
        v25 = *(v0 + 5336);
        v26 = *(v0 + 5344);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v88 = v28;
        *v27 = 136315650;
        *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v88);
        *(v27 + 12) = 2080;

        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v88);

        *(v27 + 14) = v29;
        *(v27 + 22) = 2080;
        *(v27 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v88);
        _os_log_impl(&dword_264F1F000, v23, v24, "SwiftMLSClientCoordinator enqueueing loaded outgoing event state { clientIdentifier: %s, event: %s, group: %s }", v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v28, -1, -1);
        MEMORY[0x266755550](v27, -1, -1);
      }

      v78 = *(v0 + 7448);
      v84 = *(v0 + 7440);
      v30 = *(v0 + 6832);
      v31 = *(v0 + 6824);
      v32 = *(v0 + 6776);
      v33 = *(v0 + 6760);
      v34 = *(v0 + 6752);
      v35 = *(v0 + 6744);
      v36 = *(v0 + 6736);
      v76 = *(v0 + 6664);
      v74 = *(v76 + 96);
      v37 = *(v0 + 5344);
      *(v0 + 5544) = *(v0 + 5328);
      *(v0 + 5560) = v37;
      *(v0 + 5576) = *(v0 + 5360);
      v38 = *(v0 + 5312);
      *(v0 + 5512) = *v18;
      *(v0 + 5528) = v38;
      v39 = *(v0 + 6856);
      v72 = v39;
      v73 = *(v0 + 6840);
      v31(v33, v32, v36);
      v40 = (*(v35 + 80) + 48) & ~*(v35 + 80);
      v41 = (v34 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = (v41 + 79) & 0xFFFFFFFFFFFFFFF8;
      v43 = swift_allocObject();
      *(v0 + 7496) = v43;
      *(v43 + 16) = v73;
      *(v43 + 32) = v72;
      (*(v35 + 32))(v43 + v40, v33, v36);
      v44 = v43 + v41;
      *(v44 + 64) = *(v0 + 5360);
      v45 = *(v0 + 5344);
      *(v44 + 32) = *(v0 + 5328);
      *(v44 + 48) = v45;
      v46 = *(v0 + 5312);
      *v44 = *v18;
      *(v44 + 16) = v46;
      v47 = (v43 + v42);
      *v47 = v84;
      v47[1] = v78;
      *(v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8)) = v76;
      v48 = *(*v74 + 352);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5440);
      v79 = (v48 + *v48);
      v49 = v48[1];
      v50 = swift_task_alloc();
      *(v0 + 7504) = v50;
      *v50 = v0;
      v50[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v51 = *(v0 + 7448);
      v52 = *(v0 + 7440);

      return v79(v0 + 5512, v52, v51, &async function pointer to partial apply for closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v43);
    }

    else
    {
LABEL_21:
      __break(1u);
    }
  }

  else
  {
    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v12 >= (((1 << *(v0 + 756)) + 63) >> 6))
      {
        break;
      }

      v11 = *(v0 + 7416);
      v10 = *(v11 + 8 * v12 + 64);
      ++v9;
      if (v10)
      {
        v9 = v12;
        goto LABEL_7;
      }
    }

    v60 = *(v0 + 7416);
    v61 = *(v0 + 6776);
    v75 = *(v0 + 6768);
    v77 = *(v0 + 6760);
    v62 = *(v0 + 6744);
    v63 = *(v0 + 6736);
    v80 = *(v0 + 6728);
    v82 = *(v0 + 6720);
    v86 = *(v0 + 6696);
    v64 = *(v0 + 6656);
    v65 = *(v0 + 6648);
    v66 = *(v0 + 6640);
    v67 = *(v0 + 6632);
    v68 = *(v0 + 6616);
    v69 = *(v0 + 6600);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    outlined destroy of MLS.SwiftMLSClientPicker(v65);
    outlined destroy of MLS.KeyPackageProvider(v66);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    (*(v62 + 8))(v61, v63);

    v70 = *(v0 + 8);
    v71 = *(v0 + 6664);

    return v70(v71);
  }

  return result;
}

{
  v1 = v0[847];
  v2 = v0[843];
  v3 = v0[842];
  v4 = v0[833];
  v5 = v0[832];
  v6 = v0[831];
  v7 = v0[830];
  v8 = v0[829];
  v9 = v0[827];
  v10 = v0[825];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  outlined destroy of MLS.SwiftMLSClientPicker(v6);
  outlined destroy of MLS.KeyPackageProvider(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  (*(v2 + 8))(v1, v3);
  v11 = v0[861];
  v12 = v0[847];
  v13 = v0[846];
  v14 = v0[845];
  v15 = v0[841];
  v16 = v0[840];
  v17 = v0[837];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[862];
  v20 = v0[847];
  v2 = v0[843];
  v3 = v0[842];
  v4 = v0[833];
  v5 = v0[832];
  v6 = v0[831];
  v7 = v0[830];
  v8 = v0[829];
  v9 = v0[827];
  v10 = v0[825];

  outlined destroy of NSObject?((v0 + 25), &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  outlined destroy of MLS.SwiftMLSClientPicker(v6);
  outlined destroy of MLS.KeyPackageProvider(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 737);
  (*(v2 + 8))(v20, v3);
  v11 = v0[876];
  v12 = v0[847];
  v13 = v0[846];
  v14 = v0[845];
  v15 = v0[841];
  v16 = v0[840];
  v17 = v0[837];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[863];
  v20 = v0[847];
  v2 = v0[843];
  v3 = v0[842];
  v4 = v0[833];
  v5 = v0[832];
  v6 = v0[831];
  v7 = v0[830];
  v8 = v0[829];
  v9 = v0[827];
  v10 = v0[825];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  outlined destroy of MLS.SwiftMLSClientPicker(v6);
  outlined destroy of MLS.KeyPackageProvider(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 787);
  (*(v2 + 8))(v20, v3);
  outlined destroy of NSObject?((v0 + 610), &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v11 = v0[923];
  v12 = v0[847];
  v13 = v0[846];
  v14 = v0[845];
  v15 = v0[841];
  v16 = v0[840];
  v17 = v0[837];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[847];
  v2 = v0[843];
  v3 = v0[842];
  v4 = v0[833];
  v5 = v0[832];
  v6 = v0[831];
  v7 = v0[830];
  v8 = v0[829];
  v9 = v0[827];
  v10 = v0[825];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  outlined destroy of MLS.SwiftMLSClientPicker(v6);
  outlined destroy of MLS.KeyPackageProvider(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  (*(v2 + 8))(v1, v3);
  v11 = v0[926];
  v12 = v0[847];
  v13 = v0[846];
  v14 = v0[845];
  v15 = v0[841];
  v16 = v0[840];
  v17 = v0[837];

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[927];
  v20 = v0[847];
  v2 = v0[843];
  v3 = v0[842];
  v4 = v0[833];
  v5 = v0[832];
  v6 = v0[831];
  v7 = v0[830];
  v8 = v0[829];
  v9 = v0[827];
  v10 = v0[825];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  outlined destroy of MLS.SwiftMLSClientPicker(v6);
  outlined destroy of MLS.KeyPackageProvider(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  (*(v2 + 8))(v20, v3);
  outlined destroy of MLS.OutgoingEventState((v0 + 662));
  v11 = v0[939];
  v12 = v0[847];
  v13 = v0[846];
  v14 = v0[845];
  v15 = v0[841];
  v16 = v0[840];
  v17 = v0[837];

  v18 = v0[1];

  return v18();
}

uint64_t MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 7216);
  v12 = *v2;
  *(*v2 + 7224) = v1;

  if (v1)
  {
    v6 = v4[881];
    v7 = v4[880];
    v8 = v4[863];
    v9 = v4[862];

    v10 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v4[904] = a1;
    v10 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

{
  v2 = *(*v1 + 7240);
  v4 = *v1;
  *(*v1 + 7248) = a1;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), 0, 0);
}

void MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  if ((v0[906] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[765];
    v2 = v0[766];
    __swift_project_boxed_opaque_existential_1(v0 + 762, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[907] = v5;
    *v5 = v0;
    v5[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v6 = v0[840];

    v7(v6, v1, v2);
  }
}

{
  v1 = *(v0 + 6944);
  v2 = *(v0 + 6776);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 6944);
  if (v5)
  {
    v7 = *(v0 + 6936);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v55 = v9;
    *v8 = 136315138;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v55);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator loaded outgoing events cannot find group context { group: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 6928);
  v12 = (*(v0 + 6920) - 1) & *(v0 + 6920);
  if (v12)
  {
    v13 = *(v0 + 6896);
    goto LABEL_10;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v14 >= (((1 << *(v0 + 754)) + 63) >> 6))
    {
      break;
    }

    v13 = *(v0 + 6896);
    v12 = *(v13 + 8 * v14 + 64);
    ++v11;
    if (v12)
    {
      v11 = v14;
LABEL_10:
      *(v0 + 6928) = v11;
      *(v0 + 6920) = v12;
      v15 = *(v0 + 6912);
      v16 = *(v0 + 6664);
      v17 = __clz(__rbit64(v12)) | (v11 << 6);
      v18 = (*(v13 + 48) + 16 * v17);
      *(v0 + 6936) = *v18;
      *(v0 + 6944) = v18[1];
      *(v0 + 6952) = *(*(v13 + 56) + 8 * v17);
      v19 = *(**(v16 + v15) + 192);

      v52 = v19 + *v19;
      v20 = v19[1];
      v21 = swift_task_alloc();
      *(v0 + 6960) = v21;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v21 = v0;
      v22 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
LABEL_11:
      v21[1] = v22;

      __asm { BRAA            X8, X16 }
    }
  }

  v23 = *(v0 + 6904);
  v24 = *(v0 + 6896);

  v25 = *(v23 + 32);
  *(v0 + 755) = v25;
  v26 = -1;
  v27 = -1 << v25;
  if (-(-1 << v25) < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & *(v23 + 64);

  if (v28)
  {
    v29 = 0;
    v30 = *(v0 + 6904);
LABEL_21:
    *(v0 + 7024) = v29;
    *(v0 + 7016) = v28;
    v32 = *(v0 + 6912);
    v33 = *(v0 + 6664);
    v34 = __clz(__rbit64(v28)) | (v29 << 6);
    v35 = (*(v30 + 48) + 16 * v34);
    *(v0 + 7032) = *v35;
    *(v0 + 7040) = v35[1];
    *(v0 + 7048) = *(*(v30 + 56) + 8 * v34);
    v36 = *(**(v33 + v32) + 192);

    v52 = v36 + *v36;
    v37 = v36[1];
    v21 = swift_task_alloc();
    *(v0 + 7056) = v21;
    lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
    *v21 = v0;
    v22 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    goto LABEL_11;
  }

  v31 = 0;
  v30 = *(v0 + 6904);
  while (((63 - v27) >> 6) - 1 != v31)
  {
    v29 = v31 + 1;
    v28 = *(v30 + 8 * v31++ + 72);
    if (v28)
    {
      goto LABEL_21;
    }
  }

  v38 = *(v0 + 6776);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v55 = v42;
    *v41 = 136315138;
    *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v55);
    _os_log_impl(&dword_264F1F000, v39, v40, "SwiftMLSClientCoordinator loading stored event states { clientIdentifier: %s }", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x266755550](v42, -1, -1);
    MEMORY[0x266755550](v41, -1, -1);
  }

  v43 = *(v0 + 6664);
  v44 = (v43 + *(v0 + 6872));
  v46 = *(v43 + 80);
  v45 = *(v43 + 88);
  ObjectType = swift_getObjectType();
  v48 = v44[1];
  *(v0 + 6528) = *v44;
  *(v0 + 6536) = v48;
  v49 = *(v45 + 168);

  v53 = (v49 + *v49);
  v50 = v49[1];
  v51 = swift_task_alloc();
  *(v0 + 7400) = v51;
  *v51 = v0;
  v51[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  v53(v0 + 6592, v0 + 6528, ObjectType, v45);
}

{
  v1 = *(v0 + 7040);
  v2 = *(v0 + 6776);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 7040);
  if (v5)
  {
    v7 = *(v0 + 7032);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v39);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_264F1F000, v3, v4, "SwiftMLSClientCoordinator loaded incoming events cannot find group context { group: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 7024);
  v12 = (*(v0 + 7016) - 1) & *(v0 + 7016);
  if (v12)
  {
    v13 = *(v0 + 6904);
    goto LABEL_10;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    v13 = *(v0 + 6904);
    if (v14 >= (((1 << *(v0 + 755)) + 63) >> 6))
    {
      break;
    }

    v12 = *(v13 + 8 * v14 + 64);
    ++v11;
    if (v12)
    {
      v11 = v14;
LABEL_10:
      *(v0 + 7024) = v11;
      *(v0 + 7016) = v12;
      v15 = *(v0 + 6912);
      v16 = *(v0 + 6664);
      v17 = __clz(__rbit64(v12)) | (v11 << 6);
      v18 = (*(v13 + 48) + 16 * v17);
      *(v0 + 7032) = *v18;
      *(v0 + 7040) = v18[1];
      *(v0 + 7048) = *(*(v13 + 56) + 8 * v17);
      v19 = *(**(v16 + v15) + 192);

      v36 = v19 + *v19;
      v20 = v19[1];
      v21 = swift_task_alloc();
      *(v0 + 7056) = v21;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v21 = v0;
      v21[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

      __asm { BRAA            X8, X16 }
    }
  }

  v22 = *(v0 + 6776);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v39);
    _os_log_impl(&dword_264F1F000, v23, v24, "SwiftMLSClientCoordinator loading stored event states { clientIdentifier: %s }", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x266755550](v26, -1, -1);
    MEMORY[0x266755550](v25, -1, -1);
  }

  v27 = *(v0 + 6664);
  v28 = (v27 + *(v0 + 6872));
  v30 = *(v27 + 80);
  v29 = *(v27 + 88);
  ObjectType = swift_getObjectType();
  v32 = v28[1];
  *(v0 + 6528) = *v28;
  *(v0 + 6536) = v32;
  v33 = *(v29 + 168);

  v37 = (v33 + *v33);
  v34 = v33[1];
  v35 = swift_task_alloc();
  *(v0 + 7400) = v35;
  *v35 = v0;
  v35[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  v37(v0 + 6592, v0 + 6528, ObjectType, v29);
}

{
  v1 = v0 + 4096;
  v2 = *(v0 + 6456);
  v3 = *(v0 + 6464);
  v4 = *(v0 + 6472);
  lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  v5 = swift_allocError();
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  v7 = *(v0 + 7448);
  v8 = *(v0 + 6776);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 7448);
  if (v11)
  {
    v13 = *(v0 + 7440);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v98 = v15;
    *v14 = 136315138;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v98);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_264F1F000, v9, v10, "SwiftMLSClientCoordinator loaded outgoing event states cannot find group context { group: %s }", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);

    if (*(v0 + 7480))
    {
      goto LABEL_6;
    }
  }

  else
  {

    if (*(v0 + 7480))
    {
      goto LABEL_6;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));
LABEL_6:
  v17 = *(v0 + 7432);
  v18 = (*(v0 + 7424) - 1) & *(v0 + 7424);
  if (v18)
  {
    v19 = *(v0 + 7416);
LABEL_12:
    *(v0 + 7432) = v17;
    *(v0 + 7424) = v18;
    v21 = __clz(__rbit64(v18)) | (v17 << 6);
    v22 = (*(v19 + 48) + 16 * v21);
    *(v0 + 7440) = *v22;
    *(v0 + 7448) = v22[1];
    v23 = *(*(v19 + 56) + 8 * v21);
    *(v0 + 7456) = v23;
    v24 = *(v23 + 16);
    *(v0 + 7464) = v24;
    if (!v24)
    {
      v63 = *(v0 + 6912);
      v64 = *(v0 + 6664);

      v65 = *(**(v64 + v63) + 192);
      v95 = v65 + *v65;
      v66 = v65[1];
      v67 = swift_task_alloc();
      *(v0 + 7472) = v67;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v67 = v0;
      v67[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v68 = *(v0 + 7448);
      v69 = *(v0 + 7440);

      __asm { BRAA            X8, X16 }
    }

    *(v0 + 7488) = 0;
    v25 = *(v23 + 16);

    if (v25)
    {
      v26 = (v0 + 5296);
      v27 = *(v0 + 6776);
      *(v0 + 5296) = *(v23 + 32);
      v29 = *(v23 + 64);
      v28 = *(v23 + 80);
      v30 = *(v23 + 48);
      *(v0 + 5360) = *(v23 + 96);
      *(v0 + 5328) = v29;
      *(v0 + 5344) = v28;
      *(v0 + 5312) = v30;
      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5656);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5584);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v0 + 5296);

      if (os_log_type_enabled(v31, v32))
      {
        v91 = *(v0 + 7440);
        v93 = *(v0 + 7448);
        v33 = *(v0 + 5336);
        v34 = *(v0 + 5344);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v98 = v36;
        *v35 = 136315650;
        *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v98);
        *(v35 + 12) = 2080;

        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v98);
        v1 = v0 + 4096;

        *(v35 + 14) = v37;
        *(v35 + 22) = 2080;
        *(v35 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v98);
        _os_log_impl(&dword_264F1F000, v31, v32, "SwiftMLSClientCoordinator enqueueing loaded outgoing event state { clientIdentifier: %s, event: %s, group: %s }", v35, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v36, -1, -1);
        MEMORY[0x266755550](v35, -1, -1);
      }

      v88 = *(v0 + 7448);
      v94 = *(v0 + 7440);
      v38 = (v1 + 2760);
      v39 = (v1 + 2744);
      v40 = *(v0 + 6832);
      v41 = *(v0 + 6824);
      v42 = *(v0 + 6776);
      v43 = *(v0 + 6760);
      v44 = *(v0 + 6752);
      v45 = *(v0 + 6744);
      v46 = *(v0 + 6736);
      v86 = *(v0 + 6664);
      v84 = *(v86 + 96);
      v47 = *(v0 + 5344);
      *(v0 + 5544) = *(v0 + 5328);
      *(v0 + 5560) = v47;
      *(v0 + 5576) = *(v0 + 5360);
      v48 = *(v0 + 5312);
      *(v0 + 5512) = *v26;
      *(v0 + 5528) = v48;
      v49 = *v38;
      v82 = *v38;
      v83 = *v39;
      v41(v43, v42, v46);
      v50 = (*(v45 + 80) + 48) & ~*(v45 + 80);
      v51 = (v44 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = (v51 + 79) & 0xFFFFFFFFFFFFFFF8;
      v53 = swift_allocObject();
      *(v0 + 7496) = v53;
      *(v53 + 16) = v83;
      *(v53 + 32) = v82;
      (*(v45 + 32))(v53 + v50, v43, v46);
      v54 = v53 + v51;
      *(v54 + 64) = *(v0 + 5360);
      v55 = *(v0 + 5344);
      *(v54 + 32) = *(v0 + 5328);
      *(v54 + 48) = v55;
      v56 = *(v0 + 5312);
      *v54 = *v26;
      *(v54 + 16) = v56;
      v57 = (v53 + v52);
      *v57 = v94;
      v57[1] = v88;
      *(v53 + ((v52 + 23) & 0xFFFFFFFFFFFFFFF8)) = v86;
      v58 = *(*v84 + 352);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5440);
      v89 = (v58 + *v58);
      v59 = v58[1];
      v60 = swift_task_alloc();
      *(v0 + 7504) = v60;
      *v60 = v0;
      v60[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v61 = *(v0 + 7448);
      v62 = *(v0 + 7440);

      v89(v0 + 5512, v62, v61, &async function pointer to partial apply for closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v53);
    }

    else
    {
LABEL_26:
      __break(1u);
    }
  }

  else
  {
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v20 >= (((1 << *(v0 + 756)) + 63) >> 6))
      {
        break;
      }

      v19 = *(v0 + 7416);
      v18 = *(v19 + 8 * v20 + 64);
      ++v17;
      if (v18)
      {
        v17 = v20;
        goto LABEL_12;
      }
    }

    v70 = *(v0 + 7416);
    v71 = *(v0 + 6776);
    v85 = *(v0 + 6768);
    v87 = *(v0 + 6760);
    v72 = *(v0 + 6744);
    v73 = *(v0 + 6736);
    v90 = *(v0 + 6728);
    v92 = *(v0 + 6720);
    v96 = *(v0 + 6696);
    v74 = *(v0 + 6656);
    v75 = *(v0 + 6648);
    v76 = *(v0 + 6640);
    v77 = *(v0 + 6632);
    v78 = *(v0 + 6616);
    v79 = *(v0 + 6600);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    outlined destroy of MLS.SwiftMLSClientPicker(v75);
    outlined destroy of MLS.KeyPackageProvider(v76);
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    (*(v72 + 8))(v71, v73);

    v80 = *(v0 + 8);
    v81 = *(v0 + 6664);

    v80(v81);
  }
}

{
  v1 = *(v0 + 7552);
  v2 = *(v0 + 7448);
  v3 = *(v0 + 6776);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 7448);
  if (v6)
  {
    v8 = *(v0 + 7440);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v91 = v10;
    *v9 = 136315138;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v91);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator loaded outgoing event states cannot find group context { group: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);

    if (*(v0 + 7480))
    {
      goto LABEL_6;
    }
  }

  else
  {

    if (*(v0 + 7480))
    {
      goto LABEL_6;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5976));
LABEL_6:
  v12 = *(v0 + 7432);
  v13 = (*(v0 + 7424) - 1) & *(v0 + 7424);
  if (v13)
  {
    v14 = *(v0 + 7416);
LABEL_12:
    *(v0 + 7432) = v12;
    *(v0 + 7424) = v13;
    v16 = __clz(__rbit64(v13)) | (v12 << 6);
    v17 = (*(v14 + 48) + 16 * v16);
    *(v0 + 7440) = *v17;
    *(v0 + 7448) = v17[1];
    v18 = *(*(v14 + 56) + 8 * v16);
    *(v0 + 7456) = v18;
    v19 = *(v18 + 16);
    *(v0 + 7464) = v19;
    if (!v19)
    {
      v56 = *(v0 + 6912);
      v57 = *(v0 + 6664);

      v58 = *(**(v57 + v56) + 192);
      v88 = v58 + *v58;
      v59 = v58[1];
      v60 = swift_task_alloc();
      *(v0 + 7472) = v60;
      lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
      *v60 = v0;
      v60[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v61 = *(v0 + 7448);
      v62 = *(v0 + 7440);

      __asm { BRAA            X8, X16 }
    }

    *(v0 + 7488) = 0;
    v20 = *(v18 + 16);

    if (v20)
    {
      v21 = (v0 + 5296);
      v22 = *(v0 + 6776);
      *(v0 + 5296) = *(v18 + 32);
      v24 = *(v18 + 64);
      v23 = *(v18 + 80);
      v25 = *(v18 + 48);
      *(v0 + 5360) = *(v18 + 96);
      *(v0 + 5328) = v24;
      *(v0 + 5344) = v23;
      *(v0 + 5312) = v25;
      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5656);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5584);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      outlined destroy of MLS.OutgoingEventState(v0 + 5296);

      if (os_log_type_enabled(v26, v27))
      {
        v84 = *(v0 + 7440);
        v86 = *(v0 + 7448);
        v28 = *(v0 + 5336);
        v29 = *(v0 + 5344);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v91 = v31;
        *v30 = 136315650;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v91);
        *(v30 + 12) = 2080;

        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v91);

        *(v30 + 14) = v32;
        *(v30 + 22) = 2080;
        *(v30 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, &v91);
        _os_log_impl(&dword_264F1F000, v26, v27, "SwiftMLSClientCoordinator enqueueing loaded outgoing event state { clientIdentifier: %s, event: %s, group: %s }", v30, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266755550](v31, -1, -1);
        MEMORY[0x266755550](v30, -1, -1);
      }

      v81 = *(v0 + 7448);
      v87 = *(v0 + 7440);
      v33 = *(v0 + 6832);
      v34 = *(v0 + 6824);
      v35 = *(v0 + 6776);
      v36 = *(v0 + 6760);
      v37 = *(v0 + 6752);
      v38 = *(v0 + 6744);
      v39 = *(v0 + 6736);
      v79 = *(v0 + 6664);
      v77 = *(v79 + 96);
      v40 = *(v0 + 5344);
      *(v0 + 5544) = *(v0 + 5328);
      *(v0 + 5560) = v40;
      *(v0 + 5576) = *(v0 + 5360);
      v41 = *(v0 + 5312);
      *(v0 + 5512) = *v21;
      *(v0 + 5528) = v41;
      v42 = *(v0 + 6856);
      v75 = v42;
      v76 = *(v0 + 6840);
      v34(v36, v35, v39);
      v43 = (*(v38 + 80) + 48) & ~*(v38 + 80);
      v44 = (v37 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
      v45 = (v44 + 79) & 0xFFFFFFFFFFFFFFF8;
      v46 = swift_allocObject();
      *(v0 + 7496) = v46;
      *(v46 + 16) = v76;
      *(v46 + 32) = v75;
      (*(v38 + 32))(v46 + v43, v36, v39);
      v47 = v46 + v44;
      *(v47 + 64) = *(v0 + 5360);
      v48 = *(v0 + 5344);
      *(v47 + 32) = *(v0 + 5328);
      *(v47 + 48) = v48;
      v49 = *(v0 + 5312);
      *v47 = *v21;
      *(v47 + 16) = v49;
      v50 = (v46 + v45);
      *v50 = v87;
      v50[1] = v81;
      *(v46 + ((v45 + 23) & 0xFFFFFFFFFFFFFFF8)) = v79;
      v51 = *(*v77 + 352);

      outlined init with copy of MLS.OutgoingEventState(v0 + 5296, v0 + 5440);
      v82 = (v51 + *v51);
      v52 = v51[1];
      v53 = swift_task_alloc();
      *(v0 + 7504) = v53;
      *v53 = v0;
      v53[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v54 = *(v0 + 7448);
      v55 = *(v0 + 7440);

      v82(v0 + 5512, v55, v54, &async function pointer to partial apply for closure #6 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v46);
    }

    else
    {
LABEL_26:
      __break(1u);
    }
  }

  else
  {
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v15 >= (((1 << *(v0 + 756)) + 63) >> 6))
      {
        break;
      }

      v14 = *(v0 + 7416);
      v13 = *(v14 + 8 * v15 + 64);
      ++v12;
      if (v13)
      {
        v12 = v15;
        goto LABEL_12;
      }
    }

    v63 = *(v0 + 7416);
    v64 = *(v0 + 6776);
    v78 = *(v0 + 6768);
    v80 = *(v0 + 6760);
    v65 = *(v0 + 6744);
    v66 = *(v0 + 6736);
    v83 = *(v0 + 6728);
    v85 = *(v0 + 6720);
    v89 = *(v0 + 6696);
    v67 = *(v0 + 6656);
    v68 = *(v0 + 6648);
    v69 = *(v0 + 6640);
    v70 = *(v0 + 6632);
    v71 = *(v0 + 6616);
    v72 = *(v0 + 6600);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    outlined destroy of MLS.SwiftMLSClientPicker(v68);
    outlined destroy of MLS.KeyPackageProvider(v69);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    (*(v65 + 8))(v64, v66);

    v73 = *(v0 + 8);
    v74 = *(v0 + 6664);

    v73(v74);
  }
}

uint64_t MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 7288);
  v6 = *v2;
  *(v3 + 7296) = a1;
  *(v3 + 7304) = a2;

  return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), 0, 0);
}

{
  v6 = *(*v3 + 7312);
  v7 = *v3;
  v7[915] = v2;

  if (v2)
  {
    v8 = v7[881];
    v9 = v7[880];
    v10 = v7[863];
    v11 = v7[862];

    return MEMORY[0x2822009F8](MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), 0, 0);
  }

  else
  {
    v12 = v7[901];
    v13 = v7[900];
    v25 = v7[899];
    v14 = v7[898];
    v7[916] = a2;
    v7[917] = a1;
    ObjectType = swift_getObjectType();
    v7[818] = v13;
    v7[819] = v12;
    v16 = *(v25 + 64);
    v24 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v7[918] = v18;
    *v18 = v7;
    v18[1] = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v19 = v7[899];
    v20 = v7[898];
    v21 = v7[880];
    v22 = v7[879];

    return (v24)(v22, v21, v7 + 818, ObjectType, v19);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 7344);
  v14 = *v3;
  *(*v3 + 7352) = v2;

  if (v2)
  {
    v8 = v6[881];
    v9 = v6[880];
    v10 = v6[863];
    v11 = v6[862];

    v12 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v6[920] = a2;
    v6[921] = a1;
    v12 = MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2)
{
  v2[109] = a2;
  v2[108] = a1;
  v3 = type metadata accessor for UUID();
  v2[110] = v3;
  v4 = *(v3 - 8);
  v2[111] = v4;
  v5 = *(v4 + 64) + 15;
  v2[112] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  v2[113] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v6, 0);
}

uint64_t closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  v1 = *(v0 + 872);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 912) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 896);
    v5 = *(v0 + 888);
    v6 = *(v0 + 880);
    v7 = *(v0 + 864);
    v9 = v7[1];
    v8 = v7[2];
    v10 = *v7;
    *(v0 + 818) = *(v7 + 42);
    *(v0 + 792) = v9;
    *(v0 + 808) = v8;
    *(v0 + 776) = v10;
    UUID.init()();
    v11 = UUID.uuidString.getter();
    v13 = v12;
    (*(v5 + 8))(v4, v6);
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v0 + 16) = v11;
    *(v0 + 24) = v13;
    *(v0 + 32) = xmmword_2651B5F50;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0xFFFFFFFF0000;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0;
    *(v0 + 112) = xmmword_2651B5F50;
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xF000000000000000;
    *(v0 + 176) = v14;
    v20 = (*v3 + 440);
    v21 = (*v20 + **v20);
    v15 = (*v20)[1];
    v16 = swift_task_alloc();
    *(v0 + 920) = v16;
    *v16 = v0;
    v16[1] = closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

    return v21(v0 + 520, v0 + 776, v0 + 16);
  }

  else
  {
    v18 = *(v0 + 896);

    v19 = *(v0 + 8);

    return v19();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 920);
  v29 = *v1;
  *(*v1 + 928) = v0;

  if (v0)
  {
    v4 = *(v2 + 912);
    v5 = *(v2 + 904);
    v6 = *(v2 + 32);
    *(v2 + 184) = *(v2 + 16);
    *(v2 + 200) = v6;
    v7 = *(v2 + 64);
    *(v2 + 216) = *(v2 + 48);
    v8 = *(v2 + 80);
    v9 = *(v2 + 96);
    v10 = *(v2 + 112);
    *(v2 + 232) = v7;
    *(v2 + 264) = v9;
    *(v2 + 280) = v10;
    *(v2 + 248) = v8;
    v12 = *(v2 + 144);
    v11 = *(v2 + 160);
    v13 = *(v2 + 128);
    *(v2 + 344) = *(v2 + 176);
    *(v2 + 312) = v12;
    *(v2 + 328) = v11;
    *(v2 + 296) = v13;
    outlined destroy of NSObject?(v2 + 184, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);

    v14 = closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v15 = *(v2 + 912);
    v5 = *(v2 + 904);

    v16 = *(v2 + 32);
    *(v2 + 352) = *(v2 + 16);
    *(v2 + 368) = v16;
    v17 = *(v2 + 48);
    v18 = *(v2 + 64);
    v19 = *(v2 + 96);
    *(v2 + 416) = *(v2 + 80);
    *(v2 + 432) = v19;
    *(v2 + 384) = v17;
    *(v2 + 400) = v18;
    v20 = *(v2 + 112);
    v21 = *(v2 + 128);
    v22 = *(v2 + 144);
    v23 = *(v2 + 160);
    *(v2 + 512) = *(v2 + 176);
    *(v2 + 480) = v22;
    *(v2 + 496) = v23;
    *(v2 + 448) = v20;
    *(v2 + 464) = v21;
    outlined destroy of NSObject?(v2 + 352, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO22IncomingMessageContextVy_10Foundation4DataVGMR);
    v24 = *(v2 + 600);
    *(v2 + 712) = *(v2 + 584);
    *(v2 + 728) = v24;
    v25 = *(v2 + 632);
    *(v2 + 744) = *(v2 + 616);
    *(v2 + 760) = v25;
    v26 = *(v2 + 536);
    *(v2 + 648) = *(v2 + 520);
    *(v2 + 664) = v26;
    v27 = *(v2 + 568);
    *(v2 + 680) = *(v2 + 552);
    *(v2 + 696) = v27;
    outlined destroy of NSObject?(v2 + 648, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO31IncomingMessageProcessedContextVy_10Foundation4DataVGMR);
    v14 = closure #1 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v14, v5, 0);
}

{
  v1 = *(v0 + 896);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[112];

  v2 = v0[1];
  v3 = v0[116];

  return v2();
}

uint64_t closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 552) = a5;
  *(v5 + 544) = a4;
  *(v5 + 536) = a3;
  *(v5 + 528) = a1;
  v7 = type metadata accessor for Logger();
  *(v5 + 560) = v7;
  v8 = *(v7 - 8);
  *(v5 + 568) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 576) = swift_task_alloc();
  v10 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v10;
  *(v5 + 80) = *(a2 + 64);
  v11 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v11;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v5 + 584) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v12, 0);
}

uint64_t closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  v46 = v0;
  v1 = *(v0 + 552);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 592) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 48);
    *(v0 + 448) = *(v0 + 32);
    *(v0 + 464) = v5;
    *(v0 + 480) = *(v0 + 64);
    *(v0 + 496) = *(v0 + 80);
    if (v4)
    {
      v6 = *(v0 + 544);
      outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 88, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = *(v0 + 544);
        v10 = *(v0 + 536);
        v11 = swift_slowAlloc();
        v39 = v3;
        v40 = swift_slowAlloc();
        v12 = v40;
        *v11 = 136315394;
        *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v40);
        *(v11 + 12) = 2080;
        *&v41 = v39;
        *(&v41 + 1) = v4;
        v13 = *(v0 + 464);
        v42 = *(v0 + 448);
        v43 = v13;
        v44 = *(v0 + 480);
        v45 = *(v0 + 496);
        v14 = *(v0 + 64);
        *(v0 + 336) = *(v0 + 48);
        *(v0 + 352) = v14;
        *(v0 + 368) = *(v0 + 80);
        v15 = *(v0 + 32);
        *(v0 + 304) = *(v0 + 16);
        *(v0 + 320) = v15;
        outlined init with copy of MLS.OutgoingEventState(v0 + 304, v0 + 376);
        v16 = MLS.OutgoingEventState.description.getter();
        v18 = v17;
        v19 = v44;
        *(v0 + 264) = v43;
        *(v0 + 280) = v19;
        *(v0 + 296) = v45;
        v20 = v42;
        *(v0 + 232) = v41;
        *(v0 + 248) = v20;
        outlined destroy of MLS.OutgoingEventState(v0 + 232);
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v40);

        *(v11 + 14) = v21;
        _os_log_impl(&dword_264F1F000, v7, v8, "SwiftMLSClientCoordinator retryBlock triggered { groupIdentifier: %s, eventState: %s }", v11, 0x16u);
        swift_arrayDestroy();
        v22 = v12;
        v3 = v39;
        MEMORY[0x266755550](v22, -1, -1);
        MEMORY[0x266755550](v11, -1, -1);
      }

      *(v0 + 160) = v3;
      *(v0 + 168) = v4;
      v23 = *(v0 + 464);
      *(v0 + 176) = *(v0 + 448);
      *(v0 + 192) = v23;
      *(v0 + 208) = *(v0 + 480);
      *(v0 + 224) = *(v0 + 496);
      v24 = swift_task_alloc();
      *(v0 + 600) = v24;
      *v24 = v0;
      v24[1] = closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
      v25 = *(v0 + 544);
      v26 = *(v0 + 536);
      v27 = *(v0 + 528);

      return MLS.SwiftMLSClientCoordinator.retry(eventState:forGroupIdentifier:)(v27, v0 + 160, v26, v25);
    }
  }

  v29 = *(v0 + 576);
  Logger.init(subsystem:category:)();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_264F1F000, v30, v31, "SwiftMLSClientCoordinator retryBlock lost context to retry", v32, 2u);
    MEMORY[0x266755550](v32, -1, -1);
  }

  v33 = *(v0 + 576);
  v34 = *(v0 + 568);
  v35 = *(v0 + 560);

  lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
  swift_allocError();
  *v36 = 1;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  swift_willThrow();
  (*(v34 + 8))(v33, v35);
  v37 = *(v0 + 576);

  v38 = *(v0 + 8);

  return v38();
}

{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v7 = *v1;
  *(*v1 + 608) = v0;

  v4 = *(v2 + 584);
  if (v0)
  {
    v5 = closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v5 = closure #2 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[74];
  v2 = v0[72];
  outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[74];

  outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  v2 = v0[76];
  v3 = v0[72];

  v4 = v0[1];

  return v4();
}

uint64_t closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = type metadata accessor for Logger();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v4[20] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v8, 0);
}

uint64_t closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 120);
    v4 = v3[3];
    v6 = *v3;
    v5 = v3[1];
    *(v0 + 48) = v3[2];
    *(v0 + 64) = v4;
    *(v0 + 16) = v6;
    *(v0 + 32) = v5;
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);

    return MLS.SwiftMLSClientCoordinator.performFailureToDecrypt(groupIdentifier:ftdInfo:isWithinPersisterTransaction:)(v9, v8, (v0 + 16), 0);
  }

  else
  {
    v11 = *(v0 + 152);
    Logger.init(subsystem:category:)();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_264F1F000, v12, v13, "SwiftMLSClientCoordinator enqueueFTDBlock lost context to send FTD", v14, 2u);
      MEMORY[0x266755550](v14, -1, -1);
    }

    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 136);

    lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
    swift_allocError();
    *v18 = 2;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    swift_willThrow();
    (*(v16 + 8))(v15, v17);
    v19 = *(v0 + 152);

    v20 = *(v0 + 8);

    return v20();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v5 = closure #3 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[21];
  v2 = v0[19];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[21];

  v2 = v0[23];
  v3 = v0[19];

  v4 = v0[1];

  return v4();
}

uint64_t closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for Logger();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static MLSActor.shared;
  v3[11] = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v7, 0);
}

uint64_t closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v5 = v0[5];
    v4 = v0[6];

    return MLS.SwiftMLSClientCoordinator.performSelfHeal(groupIdentifier:)(v5, v4);
  }

  else
  {
    v7 = v0[10];
    Logger.init(subsystem:category:)();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_264F1F000, v8, v9, "SwiftMLSClientCoordinator selfHealBlock lost context to enqueue self ehal", v10, 2u);
      MEMORY[0x266755550](v10, -1, -1);
    }

    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];

    lazy protocol witness table accessor for type MLS.SwiftMLSClientCoordinatorError and conformance MLS.SwiftMLSClientCoordinatorError();
    swift_allocError();
    *v14 = 2;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    swift_willThrow();
    (*(v12 + 8))(v11, v13);
    v15 = v0[10];

    v16 = v0[1];

    return v16();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v6 = closure #4 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v17;
  *(v8 + 1472) = v17[1];
  v10 = v17[3];
  *(v8 + 1488) = v17[2];
  *(v8 + 1504) = v10;
  *(v8 + 1944) = v22;
  *(v8 + 1936) = v21;
  *(v8 + 1928) = v20;
  *(v8 + 196) = v19;
  *(v8 + 1920) = v18;
  *(v8 + 1912) = v17;
  *(v8 + 1904) = a8;
  *(v8 + 1896) = a7;
  *(v8 + 1888) = a6;
  *(v8 + 1880) = a5;
  *(v8 + 1872) = a1;
  *(v8 + 1520) = *(v17 + 8);
  *(v8 + 1456) = v9;
  v11 = type metadata accessor for MLS.Group.GroupInfo();
  *(v8 + 1952) = v11;
  v12 = *(v11 - 8);
  *(v8 + 1960) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 1968) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static MLSActor.shared;
  *(v8 + 1976) = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v14, 0);
}

uint64_t closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  v60 = v0;
  v1 = *(v0 + 1904);
  v2 = *(v0 + 1888);
  v3 = *(v0 + 1880);
  outlined init with copy of MLS.OutgoingEventState?(v2, v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v2, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1904);
    v7 = *(v0 + 1896);
    v8 = *(v0 + 1888);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v56 = v10;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574707972636E45, 0xEC00000053435264, &v56);
    *(v9 + 12) = 2080;
    v11 = specialized MLS.OutgoingEventType.identifier.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v56);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2080;
    *(v9 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v56);
    _os_log_impl(&dword_264F1F000, v4, v5, "SwiftMLSClientCoordinator resending loaded outgoing event { clientIdentifier: %s, event: %s, group: %s }", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v15 = *(v0 + 1888);
  specialized MLS.OutgoingEventType.commit.getter(&v56);
  if (!v57 || (v16 = *(v0 + 1912), outlined consume of MLS.OutgoingMessage?(v56, v57, v58, v59), (v17 = v16[1]) == 0))
  {
    *(v0 + 1296) = 1;
    *(v0 + 1304) = 0u;
    *(v0 + 1320) = 0u;
    *(v0 + 1336) = 0u;
    *(v0 + 1352) = 0u;
    goto LABEL_9;
  }

  v18 = (v0 + 1456);
  v19 = *v16;
  v20 = *(v16 + 32);
  if (!v20)
  {
    v47 = *(v0 + 1504);
    *(v0 + 1704) = *(v0 + 1488);
    *(v0 + 1720) = v47;
    *(v0 + 1736) = *(v0 + 1520);
    v48 = *(v0 + 1472);
    *(v0 + 1672) = *v18;
    *(v0 + 1688) = v48;
    outlined init with copy of MLS.OutgoingEventState(v0 + 1672, v0 + 1744);
    *(v0 + 1296) = v19;
    *(v0 + 1304) = v17;
    *(v0 + 1312) = *(v16 + 1);
    *(v0 + 1328) = 0;
    v49 = *(v16 + 49);
    v50 = *(v16 + 33);
    *(v0 + 1360) = v16[8];
    *(v0 + 1329) = v50;
    *(v0 + 1345) = v49;
    v32 = 1;
    goto LABEL_10;
  }

  v21 = *(v0 + 1888);
  v22 = v21[3];
  v24 = *v21;
  v23 = v21[1];
  *(v0 + 48) = v21[2];
  *(v0 + 64) = v22;
  *(v0 + 16) = v24;
  *(v0 + 32) = v23;
  v25 = v21[7];
  v27 = v21[4];
  v26 = v21[5];
  *(v0 + 112) = v21[6];
  *(v0 + 128) = v25;
  *(v0 + 80) = v27;
  *(v0 + 96) = v26;
  v29 = v21[9];
  v28 = v21[10];
  v30 = v21[8];
  *(v0 + 192) = *(v21 + 176);
  *(v0 + 160) = v29;
  *(v0 + 176) = v28;
  *(v0 + 144) = v30;
  if (_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v0 + 16) == 14)
  {
    destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v0 + 16, v31);
    *(v0 + 1296) = 0u;
    *(v0 + 1312) = 0u;
    *(v0 + 1328) = 0u;
    *(v0 + 1344) = 0u;
    *(v0 + 1360) = 0;
LABEL_9:
    v32 = 2;
LABEL_10:
    *(v0 + 1368) = v32;
    goto LABEL_11;
  }

  v51 = *(v0 + 1504);
  *(v0 + 1560) = *(v0 + 1488);
  *(v0 + 1576) = v51;
  *(v0 + 1592) = *(v0 + 1520);
  v52 = *(v0 + 1472);
  *(v0 + 1528) = *v18;
  *(v0 + 1544) = v52;
  outlined init with copy of MLS.OutgoingEventState(v0 + 1528, v0 + 1600);
  *(v0 + 1296) = v19;
  *(v0 + 1304) = v17;
  *(v0 + 1312) = *(v16 + 1);
  *(v0 + 1328) = v20;
  v53 = *(v16 + 49);
  v54 = *(v16 + 33);
  *(v0 + 1360) = v16[8];
  *(v0 + 1329) = v54;
  *(v0 + 1345) = v53;
  *(v0 + 1368) = 0;
LABEL_11:
  v33 = *(v0 + 1944);
  v34 = *(v0 + 1936);
  v35 = *(v0 + 1920);
  v36 = *(v0 + 1888);
  closure #2 in closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(v36, *(v0 + 196), *(v0 + 1928), *(v0 + 1912), v0 + 1192);
  *(v0 + 1984) = v34[12];
  v37 = *v36;
  v38 = *(v36 + 16);
  v39 = *(v36 + 48);
  *(v0 + 416) = *(v36 + 32);
  *(v0 + 432) = v39;
  *(v0 + 384) = v37;
  *(v0 + 400) = v38;
  v40 = *(v36 + 64);
  v41 = *(v36 + 80);
  v42 = *(v36 + 112);
  *(v0 + 480) = *(v36 + 96);
  *(v0 + 496) = v42;
  *(v0 + 448) = v40;
  *(v0 + 464) = v41;
  v43 = *(v36 + 128);
  v44 = *(v36 + 144);
  v45 = *(v36 + 160);
  *(v0 + 560) = *(v36 + 176);
  *(v0 + 528) = v44;
  *(v0 + 544) = v45;
  *(v0 + 512) = v43;
  outlined init with copy of ServerBag.MLS(v33, v0 + 1816);
  *(v0 + 1992) = v34[10];
  *(v0 + 2000) = v34[11];
  v46 = v34 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier;
  *(v0 + 2008) = *(v34 + direct field offset for MLS.SwiftMLSClientCoordinator.uniqueClientIdentifier);
  *(v0 + 2016) = *(v46 + 1);

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), 0, 0);
}

{
  v1 = v0[238];
  v2 = v0[230];
  v3 = v0[231];
  __swift_project_boxed_opaque_existential_1(v0 + 227, v2);
  v4 = *(v3 + 32);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[253] = v6;
  *v6 = v0;
  v6[1] = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v8(v2, v3);
}

{
  v1 = v0[230];
  v2 = v0[231];
  __swift_project_boxed_opaque_existential_1(v0 + 227, v1);
  v3 = *(v2 + 24);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[256] = v5;
  *v5 = v0;
  v5[1] = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v7(v1, v2);
}

{
  v0[275] = v0[254];
  v1 = v0[238];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 227);

  v2 = v0[247];

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v2, 0);
}

{
  v2 = *(*v1 + 2064);
  v5 = *v1;
  *(*v1 + 2072) = v0;

  if (v0)
  {
    v3 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    v3 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[246];
  v2 = v0[245];
  v3 = v0[244];
  v0[260] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v0[261] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = v0[230];
  v6 = v0[231];
  __swift_project_boxed_opaque_existential_1(v0 + 227, v5);
  v7 = *(v6 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[262] = v9;
  *v9 = v0;
  v9[1] = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v11(v5, v6);
}

{
  v1 = v0[230];
  v2 = v0[231];
  __swift_project_boxed_opaque_existential_1(v0 + 227, v1);
  v3 = *(v2 + 64);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[265] = v5;
  *v5 = v0;
  v5[1] = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);

  return v7(v1, v2);
}

{
  v0[275] = v0[259];
  v1 = v0[238];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 227);

  v2 = v0[247];

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v2, 0);
}

{
  v1 = v0[264];
  v2 = v0[261];
  v3 = v0[260];
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = v0[264];
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[263];
  }

  v0[275] = v0[266];
  v6 = v0[238];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 227);

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);
  v7 = v0[247];

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v7, 0);
}

{
  v1 = *(v0 + 2176);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2136);
  v4 = *(v0 + 2112);
  v5 = *(v0 + 2088);
  v6 = *(v0 + 2080);
  v27 = v6;
  v28 = v5;
  v7 = *(v0 + 2056);
  v26 = v7;
  v8 = *(v0 + 2040);
  v29 = *(v0 + 1984);
  v9 = *(v0 + 1904);
  v10 = *(v0 + 1896);
  if (v3 >> 60 == 15)
  {
    v11 = 0xC000000000000000;
  }

  else
  {
    v11 = *(v0 + 2136);
  }

  if (v3 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v0 + 2144);
  }

  if (v4 >> 60 == 15)
  {
    v13 = 0xC000000000000000;
  }

  else
  {
    v13 = *(v0 + 2112);
  }

  if (v4 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 2104);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  *(v0 + 672) = v10;
  *(v0 + 680) = v9;
  *(v0 + 688) = v15;
  *(v0 + 696) = v15;
  *(v0 + 704) = v7;
  *(v0 + 712) = v6;
  *(v0 + 720) = v5;
  *(v0 + 728) = v14;
  *(v0 + 736) = v13;
  *(v0 + 744) = v12;
  *(v0 + 752) = v11;
  *(v0 + 760) = v1;
  *(v0 + 768) = v2;
  outlined init with copy of MLS.Group(v0 + 672, v0 + 776);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1816));
  *(v0 + 568) = v10;
  *(v0 + 576) = v9;
  *(v0 + 584) = v15;
  *(v0 + 592) = v15;
  *(v0 + 600) = v26;
  *(v0 + 608) = v27;
  *(v0 + 616) = v28;
  *(v0 + 624) = v14;
  *(v0 + 632) = v13;
  *(v0 + 640) = v12;
  *(v0 + 648) = v11;
  *(v0 + 656) = v1;
  *(v0 + 664) = v2;
  outlined destroy of MLS.Group(v0 + 568);
  v16 = *(v0 + 752);
  *(v0 + 944) = *(v0 + 736);
  *(v0 + 960) = v16;
  *(v0 + 976) = *(v0 + 768);
  v17 = *(v0 + 688);
  *(v0 + 880) = *(v0 + 672);
  *(v0 + 896) = v17;
  v18 = *(v0 + 720);
  *(v0 + 912) = *(v0 + 704);
  *(v0 + 928) = v18;
  *(v0 + 1376) = *(v0 + 1296);
  v19 = *(v0 + 1312);
  v20 = *(v0 + 1328);
  v21 = *(v0 + 1344);
  *(v0 + 1433) = *(v0 + 1353);
  *(v0 + 1424) = v21;
  *(v0 + 1408) = v20;
  *(v0 + 1392) = v19;
  v30 = (*v29 + 368);
  v31 = (*v30 + **v30);
  v22 = (*v30)[1];
  v23 = swift_task_alloc();
  *(v0 + 2184) = v23;
  *v23 = v0;
  v23[1] = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  v24 = *(v0 + 1984);

  return (v31)(v0 + 384, v0 + 880, v0 + 1376, 0, 0, 0);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1 + 880;
  v5 = *(*v1 + 2184);
  v6 = *v1;
  *(*v1 + 2192) = v0;

  v7 = *(v2 + 1976);
  if (v0)
  {
    v8 = *v4;
    v9 = *(v4 + 32);
    *(v3 + 1000) = *(v4 + 16);
    *(v3 + 1016) = v9;
    *(v3 + 984) = v8;
    v10 = *(v4 + 48);
    v11 = *(v4 + 64);
    v12 = *(v4 + 80);
    *(v3 + 1080) = *(v4 + 96);
    *(v3 + 1048) = v11;
    *(v3 + 1064) = v12;
    *(v3 + 1032) = v10;
    outlined destroy of MLS.Group(v3 + 984);
    v13 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {

    v14 = *v4;
    v15 = *(v4 + 16);
    *(v3 + 1120) = *(v4 + 32);
    *(v3 + 1104) = v15;
    *(v3 + 1088) = v14;
    v16 = *(v4 + 48);
    v17 = *(v4 + 64);
    v18 = *(v4 + 80);
    *(v3 + 1184) = *(v4 + 96);
    *(v3 + 1168) = v18;
    *(v3 + 1152) = v17;
    *(v3 + 1136) = v16;
    outlined destroy of MLS.Group(v3 + 1088);
    v13 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v13, v7, 0);
}

{
  v1 = v0[267];
  v2 = v0[264];
  v3 = v0[261];
  v4 = v0[260];
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v0[267];
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v0[268];
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v0[264];
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[263];
  }

  v0[275] = v0[270];
  v9 = v0[238];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 227);

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);
  v10 = v0[247];

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), v10, 0);
}

{
  outlined destroy of MLS.EventQueue.Result((v0 + 149));
  outlined destroy of MLS.RetryAfterGroupVersionBehavior((v0 + 162));
  v1 = v0[275];
  v2 = v0[246];

  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 1968);
  v2 = *(v0 + 1872);
  outlined destroy of MLS.RetryAfterGroupVersionBehavior(v0 + 1296);
  v4 = *(v0 + 1208);
  v3 = *(v0 + 1224);
  *v2 = *(v0 + 1192);
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  v6 = *(v0 + 1256);
  v5 = *(v0 + 1272);
  v7 = *(v0 + 1240);
  *(v2 + 96) = *(v0 + 1288);
  *(v2 + 64) = v6;
  *(v2 + 80) = v5;
  *(v2 + 48) = v7;

  v8 = *(v0 + 8);

  return v8();
}

{
  outlined destroy of MLS.EventQueue.Result((v0 + 149));
  outlined destroy of MLS.RetryAfterGroupVersionBehavior((v0 + 162));
  v1 = v0[274];
  v2 = v0[246];

  v3 = v0[1];

  return v3();
}

uint64_t closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 2024);
  v6 = *v2;
  *(*v2 + 2032) = v1;

  if (v1)
  {
    v7 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    *(v4 + 2040) = a1;
    v7 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v2 = *(*v1 + 2048);
  v4 = *v1;
  *(*v1 + 2056) = a1;

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), 0, 0);
}

void closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)()
{
  if ((v0[257] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[230];
    v2 = v0[231];
    __swift_project_boxed_opaque_existential_1(v0 + 227, v1);
    v3 = *(v2 + 80);
    v7 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[258] = v5;
    *v5 = v0;
    v5[1] = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v6 = v0[246];

    v7(v6, v1, v2);
  }
}

uint64_t closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2096);
  v6 = *v2;
  *(v3 + 2104) = a1;
  *(v3 + 2112) = a2;

  return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), 0, 0);
}

{
  v6 = *(*v3 + 2120);
  v7 = *v3;
  v7[266] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:), 0, 0);
  }

  else
  {
    v8 = v7[252];
    v9 = v7[251];
    v21 = v7[250];
    v10 = v7[249];
    v7[267] = a2;
    v7[268] = a1;
    ObjectType = swift_getObjectType();
    v7[232] = v9;
    v7[233] = v8;
    v12 = *(v21 + 64);
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v7[269] = v14;
    *v14 = v7;
    v14[1] = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
    v15 = v7[250];
    v16 = v7[249];
    v17 = v7[238];
    v18 = v7[237];

    return (v20)(v18, v17, v7 + 232, ObjectType, v15);
  }
}

{
  v6 = *v3;
  v7 = *(*v3 + 2152);
  v8 = *v3;
  *(*v3 + 2160) = v2;

  if (v2)
  {
    v9 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  else
  {
    *(v6 + 2168) = a2;
    *(v6 + 2176) = a1;
    v9 = closure #5 in MLS.SwiftMLSClientCoordinator.init(clientIdentifier:clientEventDeliverer:persister:credentialProvider:keyPackageProvider:swiftMLSClient:selfMember:featureFlagsStore:bag:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}