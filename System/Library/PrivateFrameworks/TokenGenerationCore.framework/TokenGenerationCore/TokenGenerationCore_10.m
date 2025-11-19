uint64_t getEnumTagSinglePayload for AutomationJSON.ParameterizedPrompt.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomationJSON.ParameterizedPrompt.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.DecoderConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomationJSON.DecoderConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.RenderedPrompt.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomationJSON.RenderedPrompt.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized AutomationJSON.RichVariableBinding.FieldType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutomationJSON.RichVariableBinding.FieldType.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized AutomationJSON.RenderedPrompt.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E696769726FLL && a2 == 0xEE0074706D6F7250;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657265646E6572 && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E656D676573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7344496E656B6F74 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized AutomationJSON.SamplingStrategyConfiguration.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802530676 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7375656C63756ELL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x78616D677261 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized AutomationJSON.InputSafetyConfiguration.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001A8FD9870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6961726472617567 && a2 == 0xEA0000000000736CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8FD9890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8FD98B0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized AutomationJSON.DecoderConfig.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001A8FD98D0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E75427466617264 && a2 == 0xEF68746150656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E7542796E6974 && a2 == 0xEE0068746150656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A696E656B6F74 && a2 == 0xED00006874615072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A8FD98F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8FD9910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574537466617264 && a2 == 0xEA00000000007370 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6572547466617264 && a2 == 0xEF726F7463614665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A8FD9930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6164417466617264 && a2 == 0xED00006576697470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8FD9950 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t specialized AutomationJSON.ParameterizedPrompt.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F72507475706E69 && a2 == 0xEF6570795474706DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A8FD9970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A8FD9990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A8FD99B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A8FD99D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8FD99F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65506874676E656CLL && a2 == 0xED000079746C616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x75716553706F7473 && a2 == 0xEC00000065636E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E656B6F5478616DLL && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8FD9A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8FD9A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6165486E656B6F74 && a2 == 0xEC000000676E696CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8FD9A50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x72616D6D617267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8FD9A70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8FD9A90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8FD9AB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001A8FD9AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A8FD9AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A8FD9B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8FD9B30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x64657265646E6572 && a2 == 0xEE0074706D6F7250)
  {

    return 29;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 29;
    }

    else
    {
      return 30;
    }
  }
}

uint64_t specialized AutomationJSON.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E75426C65646F6DLL && a2 == 0xED00006449656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656B6F5478616DLL && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F72507475706E69 && a2 == 0xEF6570795474706DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A8FD9970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A8FD9990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A8FD99B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x64657265646E6572 && a2 == -1192481450101870000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8FD9B50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8FD99F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x65506874676E656CLL && a2 == 0xED000079746C616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x75716553706F7473 && a2 == 0xEC00000065636E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6D726177657270 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8FD9A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8FD9A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6165486E656B6F74 && a2 == 0xEC000000676E696CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001A8FD9AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8FD9A50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x72616D6D617267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8FD9AB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8FD9A70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8FD9A90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x6F69746172657469 && a2 == 0xEE00746E756F436ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x654474706D6F7270 && a2 == 0xEB0000000079616CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A8FD99D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8FD9B70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A8FD9AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A8FD9B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x7265646F636564 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x437265646F636564 && a2 == 0xED00006769666E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8FD9B90 == a2)
  {

    return 40;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 40;
    }

    else
    {
      return 41;
    }
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance JSON.JSONCodingKey()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JSON.JSONCodingKey@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JSON.JSONCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JSON.JSONCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JSON.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore4JSONO13JSONCodingKey33_FE01160A198DCF2CC2A2C2F051885AC8LLVGSgMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore4JSONO13JSONCodingKey33_FE01160A198DCF2CC2A2C2F051885AC8LLVGSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore4JSONO13JSONCodingKey33_FE01160A198DCF2CC2A2C2F051885AC8LLVGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore4JSONO13JSONCodingKey33_FE01160A198DCF2CC2A2C2F051885AC8LLVGMR);
  v7 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v22 - v8;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {

    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    outlined destroy of [Regex2BNF.CharacterPredicate](&v27, &_ss28SingleValueDecodingContainer_pSgMd, &_ss28SingleValueDecodingContainer_pSgMR);
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Decoder.unkeyedContainer()();
    v23 = a1;
    v24 = a2;
    outlined init with take of PromptComponentValueConvertible(&v27, &v30);
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    v14 = dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter();
    v12 = MEMORY[0x1E69E7CC0];
    if ((v14 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(&v30, v31);
        lazy protocol witness table accessor for type JSON and conformance JSON();
        dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
        v15 = v27;
        v16 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
        }

        v18 = *(v12 + 16);
        v17 = *(v12 + 24);
        if (v18 >= v17 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v12);
        }

        *(v12 + 16) = v18 + 1;
        v19 = v12 + 24 * v18;
        *(v19 + 32) = v15;
        *(v19 + 48) = v16;
        __swift_project_boxed_opaque_existential_1(&v30, v31);
      }

      while ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0);
    }

    __swift_destroy_boxed_opaque_existential_0(&v30);
    v13 = 3;
    a1 = v23;
  }

  else
  {
    outlined init with take of PromptComponentValueConvertible(&v27, &v30);
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    v11 = dispatch thunk of SingleValueDecodingContainer.decodeNil()();
    v24 = a2;
    if (v11)
    {
      __swift_destroy_boxed_opaque_existential_0(&v30);
      v12 = 0;
      v13 = 5;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v30, v31);
      v12 = dispatch thunk of SingleValueDecodingContainer.decode(_:)() & 1;
      __swift_destroy_boxed_opaque_existential_0(&v30);
      v13 = 0;
    }
  }

  v20 = v24;
  *v24 = v12;
  v20[1] = 0;
  *(v20 + 16) = v13;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t lazy protocol witness table accessor for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey()
{
  result = lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey;
  if (!lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey;
  if (!lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey;
  if (!lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey);
  }

  return result;
}

uint64_t JSON.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore4JSONO13JSONCodingKey33_FE01160A198DCF2CC2A2C2F051885AC8LLVGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore4JSONO13JSONCodingKey33_FE01160A198DCF2CC2A2C2F051885AC8LLVGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v42 - v8;
  v10 = *v1;
  v11 = *(v1 + 16);
  if (v11 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v11 == 1)
      {
        v12 = *v1;
        v13 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        dispatch thunk of Encoder.singleValueContainer()();
        __swift_mutable_project_boxed_opaque_existential_1(v51, v53);
        dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      }

      else
      {
        v39 = v1[1];
        v40 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        dispatch thunk of Encoder.singleValueContainer()();
        __swift_mutable_project_boxed_opaque_existential_1(v51, v53);
        dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      }
    }

    else
    {
      v32 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      __swift_mutable_project_boxed_opaque_existential_1(v51, v53);
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
    }

    return __swift_destroy_boxed_opaque_existential_0(v51);
  }

  v47 = *v1;
  if (v11 == 3)
  {
    v33 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = dispatch thunk of Encoder.unkeyedContainer()();
    v46 = *(v10 + 16);
    if (v46)
    {
      v34 = 0;
      v35 = (v10 + 48);
      while (v34 < *(v10 + 16))
      {
        v37 = *(v35 - 1);
        v38 = *v35;
        v48 = *(v35 - 2);
        v36 = v48;
        v49 = v37;
        v50 = v38;
        __swift_mutable_project_boxed_opaque_existential_1(v51, v53);
        outlined copy of JSON(v36, v37, v38);
        lazy protocol witness table accessor for type JSON and conformance JSON();
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        if (v2)
        {
          outlined consume of JSON(v36, v37, v38);
          return __swift_destroy_boxed_opaque_existential_0(v51);
        }

        ++v34;
        result = outlined consume of JSON(v36, v37, v38);
        v35 += 24;
        v10 = v47;
        if (v46 == v34)
        {
          return __swift_destroy_boxed_opaque_existential_0(v51);
        }
      }

      goto LABEL_31;
    }

    return __swift_destroy_boxed_opaque_existential_0(v51);
  }

  if (v11 != 4)
  {
    v41 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v51, v53);
    dispatch thunk of SingleValueEncodingContainer.encodeNil()();
    return __swift_destroy_boxed_opaque_existential_0(v51);
  }

  v43 = v7;
  v45 = v6;
  v46 = v2;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey();
  v44 = v9;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v10 + 64;
  v16 = 1 << *(v10 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v10 + 64);
  v19 = (v16 + 63) >> 6;

  v21 = 0;
  if (!v18)
  {
LABEL_11:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        return (*(v43 + 8))(v44, v45);
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  while (1)
  {
    v22 = v21;
LABEL_14:
    v23 = __clz(__rbit64(v18)) | (v22 << 6);
    v24 = (*(v10 + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(v10 + 56) + 24 * v23;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    v51[0] = *v27;
    v28 = v51[0];
    v51[1] = v29;
    v52 = v30;
    v48 = v25;
    v49 = v26;

    outlined copy of JSON(v28, v29, v30);
    lazy protocol witness table accessor for type JSON and conformance JSON();
    v31 = v46;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = v31;
    if (v31)
    {
      break;
    }

    v18 &= v18 - 1;

    result = outlined consume of JSON(v28, v29, v30);
    v21 = v22;
    v10 = v47;
    if (!v18)
    {
      goto LABEL_11;
    }
  }

  (*(v43 + 8))(v44, v45);

  return outlined consume of JSON(v28, v29, v30);
}

void JSON.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      MEMORY[0x1AC57CB80](4);

      specialized Array<A>.hash(into:)(a1, v3);
    }

    else if (v4 == 4)
    {
      MEMORY[0x1AC57CB80](5);

      specialized Dictionary<>.hash(into:)(a1, v3);
    }

    else
    {
      MEMORY[0x1AC57CB80](0);
    }
  }

  else if (*(v1 + 16))
  {
    if (v4 == 1)
    {
      MEMORY[0x1AC57CB80](2);
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v3;
      }

      else
      {
        v5 = 0;
      }

      MEMORY[0x1AC57CBC0](v5);
    }

    else
    {
      v6 = *(v1 + 8);
      MEMORY[0x1AC57CB80](3);

      String.hash(into:)();
    }
  }

  else
  {
    MEMORY[0x1AC57CB80](1);
    Hasher._combine(_:)(v3 & 1);
  }
}

Swift::Int JSON.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  JSON.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance JSON()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  JSON.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JSON()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  JSON.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v25 = v9;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = __clz(__rbit64(v6)) | (v10 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(a2 + 56) + 24 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);

    outlined copy of JSON(v18, v19, v20);
    if (!v15)
    {
LABEL_26:

      return MEMORY[0x1AC57CB80](v25);
    }

    v21 = *(a1 + 48);
    v26[2] = *(a1 + 32);
    v26[3] = v21;
    v27 = *(a1 + 64);
    v22 = *(a1 + 16);
    v26[0] = *a1;
    v26[1] = v22;
    String.hash(into:)();

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        MEMORY[0x1AC57CB80](4);
        specialized Array<A>.hash(into:)(v26, v18);
        outlined consume of JSON(v18, v19, 3);
LABEL_5:
        v11 = v25;
        goto LABEL_6;
      }

      v11 = v25;
      if (v20 == 4)
      {
        MEMORY[0x1AC57CB80](5);
        specialized Dictionary<>.hash(into:)(v26, v18);
        outlined consume of JSON(v18, v19, 4);
      }

      else
      {
        MEMORY[0x1AC57CB80](0);
      }
    }

    else
    {
      if (!v20)
      {
        MEMORY[0x1AC57CB80](1);
        Hasher._combine(_:)(v18 & 1);
        goto LABEL_5;
      }

      v11 = v25;
      if (v20 == 1)
      {
        MEMORY[0x1AC57CB80](2);
        if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v23 = v18;
        }

        else
        {
          v23 = 0;
        }

        MEMORY[0x1AC57CBC0](v23);
      }

      else
      {
        MEMORY[0x1AC57CB80](3);
        String.hash(into:)();
        outlined consume of JSON(v18, v19, 2);
      }
    }

LABEL_6:
    v6 &= v6 - 1;
    result = Hasher._finalize()();
    v9 = result ^ v11;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      goto LABEL_26;
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary<>.hash(into:)(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    String.hash(into:)();

    String.hash(into:)();

    result = Hasher._finalize()();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1AC57CB80](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static JSON.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        outlined copy of JSON(*a2, *(a2 + 8), 3);
        outlined copy of JSON(v2, v3, 3);
        LOBYTE(v7) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore4JSONO_Tt1g5(v2, v5);
        outlined consume of JSON(v2, v3, 3);
        outlined consume of JSON(v5, v6, 3);
        return v7 & 1;
      }
    }

    else
    {
      if (v4 != 4)
      {
        if (v7 != 5 || (v6 | v5) != 0)
        {
          goto LABEL_25;
        }

        outlined consume of JSON(*a1, v3, 5);
        v11 = 0;
        v12 = 0;
        v13 = 5;
LABEL_29:
        outlined consume of JSON(v11, v12, v13);
        LOBYTE(v7) = 1;
        return v7 & 1;
      }

      if (v7 == 4)
      {
        outlined copy of JSON(*a2, *(a2 + 8), 4);
        outlined copy of JSON(v2, v3, 4);
        LOBYTE(v7) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_19TokenGenerationCore4JSONOTt1g5(v2, v5);
        outlined consume of JSON(v2, v3, 4);
        outlined consume of JSON(v5, v6, 4);
        return v7 & 1;
      }
    }

    v9 = *a1;
LABEL_20:

    goto LABEL_25;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      outlined consume of JSON(*a1, v3, 0);
      outlined consume of JSON(v5, v6, 0);
      v7 = (v5 ^ v2) ^ 1;
      return v7 & 1;
    }

LABEL_25:
    outlined copy of JSON(v5, v6, v7);
    outlined consume of JSON(v2, v3, v4);
    outlined consume of JSON(v5, v6, v7);
LABEL_26:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (v4 != 1)
  {
    v10 = *(a1 + 8);
    if (v7 == 2)
    {
      if (v2 != v5 || v3 != v6)
      {
        LOBYTE(v7) = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of JSON(v5, v6, 2);
        outlined copy of JSON(v2, v3, 2);
        outlined consume of JSON(v2, v3, 2);
        outlined consume of JSON(v5, v6, 2);
        return v7 & 1;
      }

      outlined copy of JSON(v2, v3, 2);
      outlined copy of JSON(v2, v3, 2);
      outlined consume of JSON(v2, v3, 2);
      v11 = v2;
      v12 = v3;
      v13 = 2;
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  if (v7 != 1)
  {
    goto LABEL_25;
  }

  v8 = *a2;
  outlined consume of JSON(*a1, v3, 1);
  outlined consume of JSON(v5, v6, 1);
  if (*&v2 != *&v5)
  {
    goto LABEL_26;
  }

  return v7 & 1;
}

uint64_t getEnumTagSinglePayload for JSON(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for JSON(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for JSON(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t FoundationModelsExtensionInfo.__allocating_init(fileURL:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FoundationModelsExtensionInfo.init(fileURL:)(a1);
  return v2;
}

uint64_t FoundationModelsExtensionInfo.init(fileURL:)(uint64_t a1)
{
  v48 = *v1;
  v3 = type metadata accessor for FilePath();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = v43 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v43 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v43 - v17;
  v19 = URL.path(percentEncoded:)(0);
  MEMORY[0x1AC57B790](v19._countAndFlagsBits, v19._object);
  v46 = v4[2];
  v46(v12, v18, v3);
  FilePath.appending(_:)();
  v51 = 0;
  v52 = 16842752;
  v20 = v49;
  FilePath.withCString<A>(_:)();
  if (!v20)
  {
    v44 = v7;
    v45 = a1;
    v49 = v4[1];
    v49(v15, v3);
    *(v50 + 16) = v53;
    v46(v12, v18, v3);
    v23 = FilePath.appending(_:)();
    MEMORY[0x1EEE9AC00](v23);
    v43[-2] = 0;
    LODWORD(v43[-1]) = 16842752;
    FilePath.withCString<A>(_:)();
    v43[1] = 0;
    v26 = v49;
    v49(v47, v3);
    *(v50 + 20) = v53;
    v27 = v44;
    v28 = v46;
    v46(v44, v18, v3);
    FilePath.appending(_:)();
    v43[2] = FilePath.string.getter();
    v26(v12, v3);
    v47 = v18;
    v28(v27, v18, v3);
    FilePath.appending(_:)();
    FilePath.string.getter();
    v26(v12, v3);
    v29 = [objc_opt_self() defaultManager];
    v30 = MEMORY[0x1AC57BF60]();
    LODWORD(v26) = [v29 fileExistsAtPath_];

    LODWORD(v46) = v26;
    v24 = v50;
    if (v26)
    {
      v31 = v47;
      String.utf8CString.getter();

      v32 = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
      v33 = v32;
      if ((v32 & 0x100000000) != 0)
      {

        v53 = v33;
        lazy protocol witness table accessor for type Errno and conformance Errno();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v39 = v33;
        v40 = type metadata accessor for URL();
        (*(*(v40 - 8) + 8))(v45, v40);
        v49(v31, v3);
      }

      else
      {

        *(v24 + 24) = v33;
        *(v24 + 28) = 0;
        String.utf8CString.getter();

        v34 = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
        v35 = v34;
        v36 = v45;
        if ((v34 & 0x100000000) == 0)
        {
          v37 = type metadata accessor for URL();
          (*(*(v37 - 8) + 8))(v36, v37);
          v49(v31, v3);

LABEL_11:
          *(v24 + 32) = v35;
          *(v24 + 36) = v46 ^ 1;
          return v24;
        }

        v53 = v34;
        lazy protocol witness table accessor for type Errno and conformance Errno();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v41 = v35;
        v42 = type metadata accessor for URL();
        (*(*(v42 - 8) + 8))(v36, v42);
        v49(v31, v3);
      }

      goto LABEL_4;
    }

    v38 = type metadata accessor for URL();
    (*(*(v38 - 8) + 8))(v45, v38);
    v49(v47, v3);
    v35 = 0;
    *(v24 + 24) = 0;
    *(v24 + 28) = 1;
    goto LABEL_11;
  }

  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 8))(a1, v21);
  v22 = v4[1];
  v22(v15, v3);
  v22(v18, v3);
  v24 = v50;
LABEL_4:
  swift_deallocPartialClassInstance();
  return v24;
}

uint64_t FoundationModelsExtensionInfo.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = FileDescriptor._close()();
  if ((v3 & 0x100000000) != 0 || (v4 = *(v0 + 20), v3 = FileDescriptor._close()(), (v3 & 0x100000000) != 0) || (*(v0 + 28) & 1) == 0 && (v5 = *(v0 + 24), v3 = FileDescriptor._close()(), (v3 & 0x100000000) != 0) || (*(v0 + 36) & 1) == 0 && (v6 = *(v0 + 32), v3 = FileDescriptor._close()(), (v3 & 0x100000000) != 0))
  {
    v7 = v3;
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    v8 = swift_allocError();
    *v9 = v7;
    if (one-time initialization token for assets != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.assets);
    v11 = v8;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v8;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1A8E85000, v12, v13, "[FoundationModelsExtensionInfo] Failed to close file descriptors: %@", v14, 0xCu);
      outlined destroy of NSObject?(v15);
      MEMORY[0x1AC57DBF0](v15, -1, -1);
      MEMORY[0x1AC57DBF0](v14, -1, -1);
    }

    else
    {
    }
  }

  return v1;
}

uint64_t FoundationModelsExtensionInfo.__deallocating_deinit()
{
  FoundationModelsExtensionInfo.deinit();

  return swift_deallocClassInstance();
}

uint64_t *FoundationModelsExtensionInfo.init(xpcObject:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = XPCCodableObject.copyUnderlyingXPCObject()();
  v6 = xpc_dictionary_get_value(v5, "metadata");
  if (!v6)
  {
    v11 = type metadata accessor for XPCCodableObject();
    (*(*(v11 - 8) + 8))(a1, v11);
LABEL_7:
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v2 + 4) = xpc_fd_dup(v6);
  v7 = xpc_dictionary_get_value(v5, "adapterWeights");
  if (!v7)
  {
    v12 = type metadata accessor for XPCCodableObject();
    (*(*(v12 - 8) + 8))(a1, v12);
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  *(v2 + 5) = xpc_fd_dup(v7);
  v8 = xpc_dictionary_get_value(v5, "draftMIL");
  v9 = v8;
  if (v8)
  {
    v10 = xpc_fd_dup(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
  }

  *(v2 + 6) = v10;
  *(v2 + 28) = v9 == 0;
  v13 = xpc_dictionary_get_value(v5, "draftWeights");
  if (v13)
  {
    v14 = xpc_fd_dup(v13);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v15 = type metadata accessor for XPCCodableObject();
    (*(*(v15 - 8) + 8))(a1, v15);
    *(v2 + 8) = v14;
    *(v2 + 36) = 0;
  }

  else
  {
    v16 = type metadata accessor for XPCCodableObject();
    (*(*(v16 - 8) + 8))(a1, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v2 + 8) = 0;
    *(v2 + 36) = 1;
  }

  return v2;
}

uint64_t FoundationModelsExtensionInfo.toXPCObject()()
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_fd(empty, "metadata", *(v0 + 16));
  xpc_dictionary_set_fd(empty, "adapterWeights", *(v0 + 20));
  if ((*(v0 + 28) & 1) == 0)
  {
    xpc_dictionary_set_fd(empty, "draftMIL", *(v0 + 24));
  }

  if ((*(v0 + 36) & 1) == 0)
  {
    xpc_dictionary_set_fd(empty, "draftWeights", *(v0 + 32));
  }

  return MEMORY[0x1EEE6D798](empty);
}

uint64_t closure #1 in static FileDescriptor.open(_:_:options:permissions:retryOnInterrupt:)@<X0>(_DWORD *a1@<X8>)
{
  result = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
  if ((result & 0x100000000) != 0)
  {
    v3 = result;
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v4 = v3;
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in static FileDescriptor.open(_:_:options:permissions:retryOnInterrupt:)@<X0>(_DWORD *a1@<X8>)
{
  return partial apply for closure #1 in static FileDescriptor.open(_:_:options:permissions:retryOnInterrupt:)(a1);
}

{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  v4 = *(v1 + 24) | (*(v1 + 26) << 16);
  v5 = *(v1 + 27);
  return closure #1 in static FileDescriptor.open(_:_:options:permissions:retryOnInterrupt:)(a1);
}

unint64_t lazy protocol witness table accessor for type Errno and conformance Errno()
{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance GenerationError(uint64_t a1)
{
  v2 = _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance GenerationError(uint64_t a1)
{
  v2 = _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t type metadata accessor for GenerationError()
{
  result = type metadata singleton initialization cache for GenerationError;
  if (!type metadata singleton initialization cache for GenerationError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of GenerationError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Prompt.Attachment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

TokenGenerationCore::GenerationError::Code_optional __swiftcall GenerationError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t GenerationError.code.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GenerationError();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GenerationError(v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    if (result > 5)
    {
      if (result == 6)
      {
        v9 = 2;
      }

      else
      {
        v9 = 5;
      }
    }

    else if (result == 4)
    {
      result = outlined destroy of Prompt.Attachment(v7, type metadata accessor for GenerationError);
      v9 = 7;
    }

    else
    {
      v9 = 1;
    }
  }

  else if (result > 1)
  {
    if (result == 2)
    {
      result = outlined destroy of Prompt.Attachment(v7, type metadata accessor for Prompt.Attachment);
      v9 = 4;
    }

    else
    {
      result = outlined destroy of Prompt.Attachment(v7, type metadata accessor for GenerationError);
      v9 = 6;
    }
  }

  else if (result)
  {
    result = outlined destroy of Prompt.Attachment(v7, type metadata accessor for Prompt.SpecialToken);
    v9 = 3;
  }

  else
  {
    result = outlined destroy of Prompt.Attachment(v7, type metadata accessor for GenerationError);
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t outlined destroy of Prompt.Attachment(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type GenerationError.Code and conformance GenerationError.Code()
{
  result = lazy protocol witness table cache variable for type GenerationError.Code and conformance GenerationError.Code;
  if (!lazy protocol witness table cache variable for type GenerationError.Code and conformance GenerationError.Code)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerationError.Code and conformance GenerationError.Code);
  }

  return result;
}

uint64_t base witness table accessor for Error in GenerationError()
{
  return _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError);
}

{
  return _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError);
}

void type metadata completion function for GenerationError()
{
  type metadata accessor for Prompt.SpecialToken(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for (Prompt.SpecialToken, tokenPosition: Int, promptStringSize: Int)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (Prompt.Attachment, promptStringSize: Int)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (errorMessage: String)();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (Prompt.SpecialToken, tokenPosition: Int, promptStringSize: Int)()
{
  if (!lazy cache variable for type metadata for (Prompt.SpecialToken, tokenPosition: Int, promptStringSize: Int))
  {
    type metadata accessor for Prompt.SpecialToken(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Prompt.SpecialToken, tokenPosition: Int, promptStringSize: Int));
    }
  }
}

void type metadata accessor for (Prompt.Attachment, promptStringSize: Int)()
{
  if (!lazy cache variable for type metadata for (Prompt.Attachment, promptStringSize: Int))
  {
    type metadata accessor for Prompt.Attachment(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Prompt.Attachment, promptStringSize: Int));
    }
  }
}

uint64_t type metadata accessor for (errorMessage: String)()
{
  result = lazy cache variable for type metadata for (errorMessage: String);
  if (!lazy cache variable for type metadata for (errorMessage: String))
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &lazy cache variable for type metadata for (errorMessage: String));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerationError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerationError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GenerationError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GenerationError.descriptionWithoutUnderlying.getter()
{
  result = GenerationError.errorDescription.getter();
  if (!v1)
  {
    _StringGuts.grow(_:)(38);

    type metadata accessor for GenerationError();
    _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError);
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v2);

    return 0xD000000000000024;
  }

  return result;
}

uint64_t GenerationError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GenerationError();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GenerationError(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        outlined destroy of GenerationError(v7, type metadata accessor for GenerationError);
        v10 = MEMORY[0x1E698C2D8];
        goto LABEL_12;
      }

      v9 = type metadata accessor for Prompt.Attachment;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload)
    {
      v9 = type metadata accessor for Prompt.SpecialToken;
LABEL_11:
      outlined destroy of GenerationError(v7, v9);
      v10 = MEMORY[0x1E698C310];
      goto LABEL_12;
    }

LABEL_10:
    v9 = type metadata accessor for GenerationError;
    goto LABEL_11;
  }

  if ((EnumCaseMultiPayload - 5) >= 2)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v10 = MEMORY[0x1E698C318];
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v10 = MEMORY[0x1E698C330];
LABEL_12:
  v11 = *v10;
  v12 = type metadata accessor for AppleIntelligenceErrorCategory();
  return (*(*(v12 - 8) + 104))(a1, v11, v12);
}

uint64_t outlined destroy of GenerationError(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t GenerationError.rawCode.getter()
{
  v1 = type metadata accessor for GenerationError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GenerationError(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 2;
      }

      else
      {
        return 5;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      outlined destroy of GenerationError(v4, type metadata accessor for GenerationError);
      return 7;
    }

    else
    {
      return 1;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined destroy of GenerationError(v4, type metadata accessor for Prompt.Attachment);
      return 4;
    }

    else
    {
      outlined destroy of GenerationError(v4, type metadata accessor for GenerationError);
      return 6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    outlined destroy of GenerationError(v4, type metadata accessor for Prompt.SpecialToken);
    return 3;
  }

  else
  {
    outlined destroy of GenerationError(v4, type metadata accessor for GenerationError);
    return 0;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenerationError(uint64_t a1)
{
  v2 = _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError);

  return MEMORY[0x1EEDED5B8](a1, v2);
}

void protocol witness for CustomNSError.errorCode.getter in conformance GenerationError()
{
  _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_1(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError);

  JUMPOUT(0x1AC57B160);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GenerationOverrides(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for GenerationOverrides(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void GenerationOverrides.init()(void *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0xD000000000000014;
  *(v2 + 24) = 0x80000001A8FDA040;
  v3 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v4 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    *a1 = v5;
    a1[1] = 0xD000000000000014;
    a1[2] = 0x80000001A8FDA040;
    a1[3] = partial apply for closure #1 in Overridable<A>.init(key:);
    a1[4] = v2;
    v6 = swift_allocObject();
    *(v6 + 16) = 0xD000000000000020;
    *(v6 + 24) = 0x80000001A8FDA060;
    v7 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v8 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
    v9 = [v7 initWithSuiteName_];

    if (v9)
    {
      a1[5] = v9;
      a1[6] = 0xD000000000000020;
      a1[7] = 0x80000001A8FDA060;
      a1[8] = partial apply for closure #1 in Overridable<A>.init(key:);
      a1[9] = v6;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t one-time initialization function for localeKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.localeKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.localeKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t GenerativeConfigurationProtocol<>.locale(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for localeKey != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for GenerativeConfigurationKey();
  v7 = __swift_project_value_buffer(v6, static GenerativeConfigurationKey.localeKey);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v9 = lazy protocol witness table accessor for type Locale? and conformance <A> A?(&lazy protocol witness table cache variable for type Locale? and conformance <A> A?, &lazy protocol witness table cache variable for type Locale and conformance Locale);
  v10 = lazy protocol witness table accessor for type Locale? and conformance <A> A?(&lazy protocol witness table cache variable for type Locale? and conformance <A> A?, &lazy protocol witness table cache variable for type Locale and conformance Locale);

  return MEMORY[0x1EEE30630](v7, a1, a2, v8, a3, v9, v10);
}

uint64_t lazy protocol witness table accessor for type Locale? and conformance <A> A?(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    lazy protocol witness table accessor for type Locale and conformance Locale(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Locale and conformance Locale(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Locale();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GenerativeConfigurationProtocol<>.locale.getter()
{
  if (one-time initialization token for localeKey != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.localeKey);
  type metadata accessor for Locale();
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale);
  lazy protocol witness table accessor for type Locale and conformance Locale(&lazy protocol witness table cache variable for type Locale and conformance Locale);

  return GenerativeConfigurationProtocol._getOverridableConfiguration<A>(for:type:)();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t one-time initialization function for toolsInjectDefinitionsKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t one-time initialization function for schemaInjectDefinitionKey()
{
  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_allocate_value_buffer(v0, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  return GenerativeConfigurationKey.init(_:)();
}

uint64_t RunnableConfigurationStorage.toolDefinitions.getter()
{
  if (one-time initialization token for toolsInjectDefinitionsKey != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGMd, &_sSay29GenerativeFunctionsFoundation4ToolVGMR);
  RunnableConfigurationStorage.value<A>(for:type:)();
  return v2;
}

uint64_t key path getter for RunnableConfigurationStorage.toolDefinitions : RunnableConfigurationStorage@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for toolsInjectDefinitionsKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v2, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGMd, &_sSay29GenerativeFunctionsFoundation4ToolVGMR);
  result = RunnableConfigurationStorage.value<A>(for:type:)();
  *a1 = v4;
  return result;
}

uint64_t key path setter for RunnableConfigurationStorage.toolDefinitions : RunnableConfigurationStorage(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for toolsInjectDefinitionsKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v2, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGSgMd, _sSay29GenerativeFunctionsFoundation4ToolVGSgMR);
  return RunnableConfigurationStorage.set<A>(_:value:)();
}

uint64_t RunnableConfigurationStorage.toolDefinitions.setter()
{
  if (one-time initialization token for toolsInjectDefinitionsKey != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGSgMd, _sSay29GenerativeFunctionsFoundation4ToolVGSgMR);
  RunnableConfigurationStorage.set<A>(_:value:)();
}

uint64_t (*RunnableConfigurationStorage.toolDefinitions.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  if (one-time initialization token for toolsInjectDefinitionsKey != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for GenerativeConfigurationKey();
  *(a1 + 24) = __swift_project_value_buffer(v3, static GenerativeConfigurationKey.toolsInjectDefinitionsKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGMd, &_sSay29GenerativeFunctionsFoundation4ToolVGMR);
  RunnableConfigurationStorage.value<A>(for:type:)();
  return RunnableConfigurationStorage.toolDefinitions.modify;
}

uint64_t RunnableConfigurationStorage.toolDefinitions.modify(void *a1, char a2)
{
  a1[1] = *a1;
  v2 = a1[2];
  v3 = a1[3];
  if (a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGSgMd, _sSay29GenerativeFunctionsFoundation4ToolVGSgMR);
    RunnableConfigurationStorage.set<A>(_:value:)();

    v5 = *a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay29GenerativeFunctionsFoundation4ToolVGSgMd, _sSay29GenerativeFunctionsFoundation4ToolVGSgMR);
    RunnableConfigurationStorage.set<A>(_:value:)();
  }
}

uint64_t RunnableConfigurationStorage.schemaDefinition.getter()
{
  if (one-time initialization token for schemaInjectDefinitionKey != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  type metadata accessor for Prompt.ResponseFormat(0);

  return RunnableConfigurationStorage.value<A>(for:type:)();
}

uint64_t key path getter for RunnableConfigurationStorage.schemaDefinition : RunnableConfigurationStorage()
{
  if (one-time initialization token for schemaInjectDefinitionKey != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v0, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  type metadata accessor for Prompt.ResponseFormat(0);
  return RunnableConfigurationStorage.value<A>(for:type:)();
}

uint64_t key path setter for RunnableConfigurationStorage.schemaDefinition : RunnableConfigurationStorage(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  outlined init with copy of Prompt.ResponseFormat?(a1, &v8 - v4);
  if (one-time initialization token for schemaInjectDefinitionKey != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v6, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  RunnableConfigurationStorage.set<A>(_:value:)();
  return outlined destroy of Prompt.ResponseFormat?(v5);
}

uint64_t RunnableConfigurationStorage.schemaDefinition.setter(uint64_t a1)
{
  if (one-time initialization token for schemaInjectDefinitionKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GenerativeConfigurationKey();
  __swift_project_value_buffer(v2, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  RunnableConfigurationStorage.set<A>(_:value:)();

  return outlined destroy of Prompt.ResponseFormat?(a1);
}

uint64_t outlined destroy of Prompt.ResponseFormat?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*RunnableConfigurationStorage.schemaDefinition.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  v5[1] = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v7);
    v8 = malloc(v7);
  }

  v5[3] = v8;
  if (one-time initialization token for schemaInjectDefinitionKey != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for GenerativeConfigurationKey();
  v5[4] = __swift_project_value_buffer(v9, static GenerativeConfigurationKey.schemaInjectDefinitionKey);
  type metadata accessor for Prompt.ResponseFormat(0);
  RunnableConfigurationStorage.value<A>(for:type:)();
  return RunnableConfigurationStorage.schemaDefinition.modify;
}

void RunnableConfigurationStorage.schemaDefinition.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    outlined init with copy of Prompt.ResponseFormat?((*a1)[3], v5);
    RunnableConfigurationStorage.set<A>(_:value:)();
    outlined destroy of Prompt.ResponseFormat?(v5);
  }

  else
  {
    v8 = (*a1)[4];
    RunnableConfigurationStorage.set<A>(_:value:)();
  }

  outlined destroy of Prompt.ResponseFormat?(v3);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t outlined init with copy of Prompt.ResponseFormat?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV14ResponseFormatVSgMd, &_s15TokenGeneration6PromptV14ResponseFormatVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t destroy for Signpost(uint64_t a1, int *a2)
{
  v4 = a2[5];
  v5 = type metadata accessor for OSSignposter();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a2[6];
  v7 = type metadata accessor for OSSignpostID();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
  v8 = *(a1 + a2[7]);
}

uint64_t initializeWithTake for Signpost(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = a3[5];
  v7 = type metadata accessor for OSSignposter();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[6];
  v9 = type metadata accessor for OSSignpostID();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t assignWithTake for Signpost(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = a3[5];
  v7 = type metadata accessor for OSSignposter();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  v8 = a3[6];
  v9 = type metadata accessor for OSSignpostID();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  v10 = a3[7];
  v11 = *(a1 + v10);
  *(a1 + v10) = *(a2 + v10);

  return a1;
}

uint64_t type metadata accessor for Signpost()
{
  result = type metadata singleton initialization cache for Signpost;
  if (!type metadata singleton initialization cache for Signpost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Signpost()
{
  result = type metadata accessor for OSSignposter();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for OSSignpostID();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t Signpost.init(_:_:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v45 = a1;
  v10 = type metadata accessor for OSSignpostID();
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v42 = a2;
  *a5 = a2;
  *(a5 + 8) = a3;
  v41 = a4;
  *(a5 + 16) = a4;
  v20 = *(v17 + 16);
  v44 = v21;
  v20(&v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v22 = type metadata accessor for Signpost();
  v23 = v22[5];
  OSSignposter.init(logger:)();
  v24 = v22[6];
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v25 = *(v46 + 16);
  v25(v15, a5 + v24, v10);
  v26 = v45;
  v27 = OSSignposter.logHandle.getter();
  v40 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v37 = v25;
  v38 = v22;
  v39 = v17;
  v29 = v26;
  if ((v41 & 1) == 0)
  {
    v30 = v42;
    if (v42)
    {
LABEL_9:
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1A8E85000, v27, v40, v32, v30, "", v31, 2u);
      MEMORY[0x1AC57DBF0](v31, -1, -1);
      v26 = v29;
      v22 = v38;
      v17 = v39;
      v25 = v37;
LABEL_10:

      v25(v43, v15, v10);
      v33 = type metadata accessor for OSSignpostIntervalState();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v36 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v17 + 8))(v26, v44);
      result = (*(v46 + 8))(v15, v10);
      *(a5 + v22[7]) = v36;
      return result;
    }

    __break(1u);
  }

  if (v42 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v42 & 0xFFFFF800) != 0xD800)
  {
    if (v42 >> 16 <= 0x10)
    {
      v30 = &v47;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t one-time initialization function for stopSequenceMonitor()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.stopSequenceMonitor);
  __swift_project_value_buffer(v0, static Log.stopSequenceMonitor);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for tokenization(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

Swift::Void __swiftcall Signpost.end()()
{
  v1 = type metadata accessor for OSSignpostError();
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Signpost();
  v11 = *v0;
  v12 = *(v0 + 16);
  v13 = *(v0 + *(v10 + 28));
  v14 = v0 + *(v10 + 20);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v21 = static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
LABEL_13:

    (*(v6 + 8))(v9, v5);
    return;
  }

  if ((v12 & 1) == 0)
  {
    if (v11)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      v16 = v22;
      if ((*(v22 + 88))(v4, v1) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v16 + 8))(v4, v1);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1A8E85000, v15, v21, v19, v11, v17, v18, 2u);
      MEMORY[0x1AC57DBF0](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v11 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v11 & 0xFFFFF800) != 0xD800)
  {
    if (v11 >> 16 <= 0x10)
    {
      v11 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t ModelBundle.resourceURI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for ModelBundle()
{
  result = type metadata singleton initialization cache for ModelBundle;
  if (!type metadata singleton initialization cache for ModelBundle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ModelBundle.init(preverifiedIdentifier:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  *(a3 + *(type metadata accessor for ModelBundle() + 20)) = 0;
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.bundle);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v19);
    _os_log_impl(&dword_1A8E85000, v11, v12, "ModelBundle: Creating with preverified identifier: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1AC57DBF0](v14, -1, -1);
    MEMORY[0x1AC57DBF0](v13, -1, -1);
  }

  URL.init(string:)();
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  result = (*(v16 + 48))(v9, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v16 + 32))(a3, v9, v15);
  }

  return result;
}

uint64_t ModelBundle.init(fileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.bundle);
  v37 = *(v4 + 16);
  v37(v9, a1, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v34 = a1;
    v16 = v15;
    v40 = v15;
    *v14 = 136315138;
    _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = v9;
    v21 = *(v36 + 8);
    v21(v20, v3);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v40);

    *(v14 + 4) = v22;
    _os_log_impl(&dword_1A8E85000, v11, v12, "ModelBundle: Creating with fileURL: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v23 = v16;
    a1 = v34;
    MEMORY[0x1AC57DBF0](v23, -1, -1);
    v24 = v14;
    v4 = v36;
    MEMORY[0x1AC57DBF0](v24, -1, -1);
  }

  else
  {

    v25 = v9;
    v21 = *(v4 + 8);
    v21(v25, v3);
  }

  if (URL.pathExtension.getter() == 0x6574706164616D66 && v26 == 0xE900000000000072)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      type metadata accessor for GenerationError();
      _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, type metadata accessor for GenerationError);
      swift_allocError();
      *v33 = 0xD00000000000002ALL;
      v33[1] = 0x80000001A8FDA1B0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (v21)(a1, v3);
    }
  }

  v28 = v38;
  v37(v38, a1, v3);
  type metadata accessor for FoundationModelsExtensionInfo();
  swift_allocObject();
  v29 = v39;
  FoundationModelsExtensionInfo.init(fileURL:)(v28);
  if (!v29)
  {

    v30 = *(type metadata accessor for ModelBundle() + 20);
    v31 = v35;
    result = (*(v4 + 32))(v35, a1, v3);
    *(v31 + v30) = 1;
    return result;
  }

  return (v21)(a1, v3);
}

uint64_t ModelBundle.init(identifier:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = static InternalVariantArguments.arguments()();
  ModelBundle.init(identifier:internalArguments:)(a1, a2, v10, v9);
  v11 = type metadata accessor for ModelBundle();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11))
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v9, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
    v13 = 1;
  }

  else
  {
    outlined init with take of ModelBundle(v9, a3);
    v13 = 0;
  }

  return (*(v12 + 56))(a3, v13, 1, v11);
}

uint64_t ModelBundle.init(identifier:internalArguments:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v153 = a3;
  v155 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog19ResourceBundleQueryVSgMd, &_s12ModelCatalog19ResourceBundleQueryVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v145 = &v133 - v8;
  v9 = type metadata accessor for ResourceBundleQuery();
  v151 = *(v9 - 8);
  v10 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v139 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v133 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v133 - v16;
  v146 = type metadata accessor for URLComponents();
  v152 = *(v146 - 8);
  v18 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v143 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v133 - v22;
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v142 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v138 = &v133 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v135 = &v133 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v136 = &v133 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v144 = &v133 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v137 = &v133 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v133 - v39;
  v41 = type metadata accessor for ModelBundle();
  v148 = *(v41 - 8);
  v42 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v133 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = v45;
  v46 = *(v45 + 20);
  v140 = v44;
  v44[v46] = 0;
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  v48 = __swift_project_value_buffer(v47, static Log.bundle);

  v147 = v48;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  v51 = os_log_type_enabled(v49, v50);
  v150 = a4;
  v141 = v9;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = v40;
    v54 = v25;
    v55 = v24;
    v56 = swift_slowAlloc();
    v156[0] = v56;
    *v52 = 136315138;
    *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, a2, v156);
    _os_log_impl(&dword_1A8E85000, v49, v50, "ModelBundle: Creating with identifier: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    v57 = v56;
    v24 = v55;
    v25 = v54;
    v40 = v53;
    MEMORY[0x1AC57DBF0](v57, -1, -1);
    MEMORY[0x1AC57DBF0](v52, -1, -1);
  }

  URL.init(string:)();
  v58 = (*(v25 + 48))(v23, 1, v24);
  v59 = v151;
  v60 = v152;
  v61 = v154;
  if (v58 == 1)
  {

    outlined destroy of [Regex2BNF.CharacterPredicate](v23, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v156[0] = v65;
      *v64 = 136315138;
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, a2, v156);

      *(v64 + 4) = v66;
      _os_log_impl(&dword_1A8E85000, v62, v63, "ModelBundle: Identifier is not valid - could not convert to URL: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x1AC57DBF0](v65, -1, -1);
      MEMORY[0x1AC57DBF0](v64, -1, -1);
    }

    else
    {
    }

    goto LABEL_21;
  }

  v134 = *(v25 + 32);
  v134(v40, v23, v24);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v67 = v146;
  if ((*(v60 + 48))(v17, 1, v146) == 1)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v17, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  }

  else
  {
    v68 = v143;
    (*(v60 + 32))(v143, v17, v67);
    v69 = URLComponents.queryItems.getter();
    if (v69)
    {
      v70 = *(v69 + 16);

      if (v70 && (static VariantHelpers.isResourceBundleQueryURIResolved(uri:)() & 1) != 0)
      {

        v71 = *(v25 + 16);
        v71(v140, v40, v24);
        v72 = v137;
        v71(v137, v40, v24);

        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v156[0] = v76;
          *v75 = 136315394;
          v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, a2, v156);

          *(v75 + 4) = v77;
          *(v75 + 12) = 2080;
          v78 = URL.absoluteString.getter();
          v153 = v40;
          v79 = v24;
          v81 = v80;
          v82 = *(v25 + 8);
          v82(v72, v79);
          v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v81, v156);

          *(v75 + 14) = v83;
          _os_log_impl(&dword_1A8E85000, v73, v74, "ModelBundle: resolving %s to %s, already resolved.", v75, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1AC57DBF0](v76, -1, -1);
          MEMORY[0x1AC57DBF0](v75, -1, -1);

          (*(v152 + 8))(v143, v146);
          v82(v153, v79);
        }

        else
        {

          v108 = *(v25 + 8);
          v108(v72, v24);
          (*(v152 + 8))(v143, v146);
          v108(v40, v24);
        }

        goto LABEL_33;
      }

      (*(v60 + 8))(v143, v146);
    }

    else
    {
      (*(v60 + 8))(v68, v67);
    }

    v61 = v154;
  }

  v146 = v25;
  v84 = *(v25 + 16);
  v152 = v24;
  v84(v144, v40, v24);
  v85 = v145;
  ResourceBundleQuery.init(uri:)();
  v89 = *(v59 + 48);
  v90 = v59;
  v91 = v141;
  v92 = v89(v85, 1, v141);
  if (v92 != 1)
  {
    (*(v90 + 32))(v61, v85, v91);
    ResourceBundleQuery.addArguments(_:shouldOverride:)();

    v106 = v136;
    v107 = v139;
    ResourceBundleQuery.toURI()();
    v153 = v40;
    v109 = v135;
    v110 = v152;
    v84(v135, v106, v152);

    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();

    v113 = os_log_type_enabled(v111, v112);
    v114 = v151;
    if (v113)
    {
      v115 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v156[0] = v147;
      *v115 = 136315394;
      v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, a2, v156);

      *(v115 + 4) = v116;
      *(v115 + 12) = 2080;
      v117 = URL.absoluteString.getter();
      v118 = v109;
      v120 = v119;
      v121 = *(v146 + 8);
      v121(v118, v152);
      v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v120, v156);

      *(v115 + 14) = v122;
      _os_log_impl(&dword_1A8E85000, v111, v112, "ModelBundle: resolving %s to %s. Query parameters already provided.", v115, 0x16u);
      v123 = v147;
      swift_arrayDestroy();
      MEMORY[0x1AC57DBF0](v123, -1, -1);
      v124 = v115;
      v125 = v107;
      v126 = v152;
      MEMORY[0x1AC57DBF0](v124, -1, -1);

      v127 = *(v114 + 8);
      v128 = v141;
      v127(v125, v141);
      v127(v154, v128);
      v121(v153, v126);
    }

    else
    {

      v129 = *(v146 + 8);
      v129(v109, v110);
      v130 = *(v114 + 8);
      v131 = v141;
      v130(v107, v141);
      v130(v154, v131);
      v126 = v152;
      v129(v153, v152);
    }

    v134(v140, v136, v126);
LABEL_33:
    v132 = v150;
    outlined init with take of ModelBundle(v140, v150);
    v87 = v132;
    v86 = 0;
    return (*(v148 + 56))(v87, v86, 1, v149);
  }

  outlined destroy of [Regex2BNF.CharacterPredicate](v85, &_s12ModelCatalog19ResourceBundleQueryVSgMd, &_s12ModelCatalog19ResourceBundleQueryVSgMR);
  v93 = v138;
  v94 = v152;
  v84(v138, v40, v152);
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v156[0] = v98;
    *v97 = 136315138;
    v99 = URL.absoluteString.getter();
    v100 = v93;
    v102 = v101;
    v103 = *(v146 + 8);
    v103(v100, v94);
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v102, v156);

    *(v97 + 4) = v104;
    _os_log_impl(&dword_1A8E85000, v95, v96, "ModelBundle: URL could not create a ResourceBundleQuery: %s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v98);
    MEMORY[0x1AC57DBF0](v98, -1, -1);
    MEMORY[0x1AC57DBF0](v97, -1, -1);

    v103(v40, v94);
  }

  else
  {

    v105 = *(v146 + 8);
    v105(v93, v94);
    v105(v40, v94);
  }

LABEL_21:
  v86 = 1;
  v87 = v150;
  return (*(v148 + 56))(v87, v86, 1, v149);
}

uint64_t ModelBundle.init(resourceBundleQuery:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ResourceBundleQuery();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  v13 = static InternalVariantArguments.arguments()();
  (*(v5 + 16))(v8, a1, v4);
  ModelBundle.init(resourceBundleQuery:internalArguments:)(v8, v13, v12);
  (*(v5 + 8))(a1, v4);
  v14 = type metadata accessor for ModelBundle();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14))
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v12, &_s15TokenGeneration11ModelBundleVSgMd, &_s15TokenGeneration11ModelBundleVSgMR);
    v16 = 1;
  }

  else
  {
    outlined init with take of ModelBundle(v12, a2);
    v16 = 0;
  }

  return (*(v15 + 56))(a2, v16, 1, v14);
}

uint64_t ModelBundle.init(resourceBundleQuery:internalArguments:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v81 = a1;
  v78 = a3;
  v3 = type metadata accessor for URL();
  v73 = *(v3 - 8);
  v4 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v63 - v7;
  v8 = type metadata accessor for ResourceBundleQuery();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v63 - v19;
  v21 = type metadata accessor for ModelBundle();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v26;
  v27 = *(v26 + 20);
  v70 = v25;
  v25[v27] = 0;
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v68 = v12;
  v28 = type metadata accessor for Logger();
  v29 = __swift_project_value_buffer(v28, static Log.bundle);
  v30 = v9[2];
  v30(v20, v81, v8);
  v74 = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v31, v32);
  v80 = v9;
  v65 = v17;
  v66 = v30;
  v67 = v9 + 2;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v71 = v3;
    v35 = v34;
    v36 = swift_slowAlloc();
    v72 = v22;
    v64 = v36;
    v82[0] = v36;
    *v35 = 136315138;
    v30(v17, v20, v8);
    v37 = String.init<A>(reflecting:)();
    v38 = v8;
    v40 = v39;
    v41 = v9[1];
    v41(v20, v38);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v40, v82);
    v8 = v38;

    *(v35 + 4) = v42;
    _os_log_impl(&dword_1A8E85000, v31, v32, "ModelBundle: Creating with resource bundle query: %s", v35, 0xCu);
    v43 = v64;
    __swift_destroy_boxed_opaque_existential_0(v64);
    v22 = v72;
    MEMORY[0x1AC57DBF0](v43, -1, -1);
    v44 = v35;
    v3 = v71;
    MEMORY[0x1AC57DBF0](v44, -1, -1);
  }

  else
  {

    v41 = v9[1];
    v41(v20, v8);
  }

  ResourceBundleQuery.addArguments(_:shouldOverride:)();
  v45 = v79;

  ResourceBundleQuery.toURI()();
  v72 = v22;
  v47 = v68;
  v48 = v66;
  v66(v68, v81, v8);
  v49 = v69;
  (*(v73 + 16))(v69, v45, v3);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v82[0] = v75;
    *v52 = 136315394;
    LODWORD(v74) = v51;
    v48(v65, v47, v8);
    v53 = String.init<A>(reflecting:)();
    v55 = v54;
    v71 = v3;
    v41(v47, v8);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v82);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    v57 = URL.absoluteString.getter();
    v59 = v58;
    (*(v73 + 8))(v49, v71);
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v82);

    *(v52 + 14) = v60;
    _os_log_impl(&dword_1A8E85000, v50, v74, "ModelBundle: resolved resource bundle query: %s to %s", v52, 0x16u);
    v61 = v75;
    swift_arrayDestroy();
    MEMORY[0x1AC57DBF0](v61, -1, -1);
    MEMORY[0x1AC57DBF0](v52, -1, -1);

    v41(v81, v8);
    v41(v77, v8);
    v3 = v71;
  }

  else
  {

    v41(v81, v8);
    (*(v73 + 8))(v49, v3);
    v41(v47, v8);
    v41(v77, v8);
  }

  v62 = v70;
  (*(v73 + 32))(v70, v79, v3);
  outlined init with take of ModelBundle(v62, v78);
  return (*(v72 + 56))(v78, 0, 1, v76);
}

uint64_t static ModelBundle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static URL.== infix(_:_:)())
  {
    v4 = type metadata accessor for ModelBundle();
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void ModelBundle.hash(into:)()
{
  type metadata accessor for URL();
  _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for ModelBundle();
  Hasher._combine(_:)(*(v0 + *(v1 + 20)));
}

Swift::Int ModelBundle.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for ModelBundle();
  Hasher._combine(_:)(*(v0 + *(v1 + 20)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ModelBundle(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ModelBundle(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URL();
  _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ModelBundle(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ModelBundle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static URL.== infix(_:_:)())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t outlined init with take of ModelBundle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s19TokenGenerationCore0B5ErrorOACs0D0AAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for ModelBundle()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t specialized Dictionary.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2), (v6 & 1) != 0))
  {
    v7 = (*(a3 + 56) + 16 * result);
    v8 = v7[1];
    *a4 = *v7;
    a4[1] = v8;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t ModelConfiguration.init(modelbundleIdentifier:catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  return ModelConfiguration.init(modelbundleIdentifier:catalogClient:)(a1, a2, static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:), &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR, a3);
}

{
  return ModelConfiguration.init(modelbundleIdentifier:catalogClient:)(a1, a2, static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:), &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR, a3);
}

uint64_t static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA9LLMBundleVGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v67 - v11;
  ResourceBundleIdentifier<>.serverConfiguration()();
  if (!v71)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](&v70, &_s12ModelCatalog30AssetBackedServerConfiguration_pSgMd, &_s12ModelCatalog30AssetBackedServerConfiguration_pSgMR);
    if (one-time initialization token for configuration != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Log.configuration);
    (*(v6 + 16))(v9, a1, v5);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v73[0] = v36;
      *v35 = 136446210;
      v37 = MEMORY[0x1AC57AE60](v5);
      v39 = v38;
      (*(v6 + 8))(v9, v5);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v73);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1A8E85000, v33, v34, "Could not find a corresponding server configuration for LLM bundle ID: %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1AC57DBF0](v36, -1, -1);
      MEMORY[0x1AC57DBF0](v35, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    return 0;
  }

  outlined init with take of PromptComponentValueConvertible(&v70, v73);
  if (one-time initialization token for configuration != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.configuration);
  (*(v6 + 16))(v12, a1, v5);
  outlined init with copy of GuidedGenerationTokenizer(v73, &v70);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v68 = v5;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v67[1] = v2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v67[0] = a2;
    v20 = v19;
    v76 = v19;
    *v18 = 136315394;
    v21 = MEMORY[0x1AC57AE60](v5);
    v22 = v5;
    v24 = v23;
    (*(v6 + 8))(v12, v22);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v24, &v76);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = v72;
    __swift_project_boxed_opaque_existential_1(&v70, v71);
    v27 = *(*(v26 + 8) + 8);
    v28 = dispatch thunk of CatalogResource.id.getter();
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_0(&v70);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v76);

    *(v18 + 14) = v31;
    _os_log_impl(&dword_1A8E85000, v14, v15, "_LoadedModelConfiguration: Resolved model bundle identifier: %s to resource: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC57DBF0](v20, -1, -1);
    MEMORY[0x1AC57DBF0](v18, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v12, v5);
    __swift_destroy_boxed_opaque_existential_0(&v70);
  }

  v41 = v74;
  v42 = v75;
  v43 = __swift_project_boxed_opaque_existential_1(v73, v74);
  v71 = v41;
  v72 = *(v42 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v70);
  (*(*(v41 - 8) + 16))(boxed_opaque_existential_1, v43, v41);
  v45 = v69;
  specialized CatalogClient.metadataWithAssetInformation(from:catalogClient:)(&v70);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  __swift_destroy_boxed_opaque_existential_0(&v70);
  v69 = v45;
  if (v45)
  {
    return __swift_destroy_boxed_opaque_existential_0(v73);
  }

  if (!v53)
  {
    __swift_destroy_boxed_opaque_existential_0(v73);
    return 0;
  }

  v55 = type metadata accessor for JSONDecoder();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type _LoadedModelConfiguration and conformance _LoadedModelConfiguration();
  v58 = v69;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v69 = v58;
  if (v58)
  {
    outlined consume of Data._Representation(v47, v49);

    return __swift_destroy_boxed_opaque_existential_0(v73);
  }

  v59 = v70;
  v60 = MEMORY[0x1AC57AE60](v68);
  v62 = v61;
  outlined consume of Data._Representation(v47, v49);
  swift_beginAccess();
  v63 = v59[5];
  v64 = v59[6];
  v65 = v59[7];
  v66 = v59[8];
  v59[5] = v60;
  v59[6] = v62;
  v59[7] = v51;
  v59[8] = v53;
  outlined consume of (start: String, end: String)?(v63, v64);
  __swift_destroy_boxed_opaque_existential_0(v73);
  return v59;
}

uint64_t ModelConfiguration.init(modelbundleIdentifier:catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for _LoadedModelConfiguration();
  v13 = a3(a1, a2);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  (*(*(v14 - 8) + 8))(a1, v14);

  if (!v6)
  {
    *a6 = v13;
  }

  return result;
}

void *static _LoadedModelConfiguration.create(modelBundleIdentifier:catalogClient:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  static _LoadedModelConfiguration.assetBackedResource(for:catalogClient:)(a1, a2, v29);
  if (!v3)
  {
    outlined init with copy of (String, Any)(v29, &v26, &_s12ModelCatalog19AssetBackedResource_pSgMd, &_s12ModelCatalog19AssetBackedResource_pSgMR);
    if (v27)
    {
      outlined init with take of PromptComponentValueConvertible(&v26, v28);
      specialized CatalogClient.metadataWithAssetInformation(from:catalogClient:)(v28);
      if (v9)
      {
        v10 = v6;
        v11 = v7;
        v12 = v8;
        v13 = v9;
        v14 = type metadata accessor for JSONDecoder();
        v15 = *(v14 + 48);
        v16 = *(v14 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        lazy protocol witness table accessor for type _LoadedModelConfiguration and conformance _LoadedModelConfiguration();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v4 = v26;
        v17 = v28[4];
        __swift_project_boxed_opaque_existential_1(v28, v28[3]);
        v18 = *(v17 + 8);
        v19 = dispatch thunk of CatalogResource.id.getter();
        v21 = v20;
        outlined consume of Data._Representation(v10, v11);
        outlined destroy of [Regex2BNF.CharacterPredicate](v29, &_s12ModelCatalog19AssetBackedResource_pSgMd, &_s12ModelCatalog19AssetBackedResource_pSgMR);
        swift_beginAccess();
        v22 = v4[5];
        v23 = v4[6];
        v24 = v4[7];
        v25 = v4[8];
        v4[5] = v19;
        v4[6] = v21;
        v4[7] = v12;
        v4[8] = v13;
        outlined consume of (start: String, end: String)?(v22, v23);
        __swift_destroy_boxed_opaque_existential_0(v28);
      }

      else
      {
        outlined destroy of [Regex2BNF.CharacterPredicate](v29, &_s12ModelCatalog19AssetBackedResource_pSgMd, &_s12ModelCatalog19AssetBackedResource_pSgMR);
        __swift_destroy_boxed_opaque_existential_0(v28);
        return 0;
      }
    }

    else
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v29, &_s12ModelCatalog19AssetBackedResource_pSgMd, &_s12ModelCatalog19AssetBackedResource_pSgMR);
      outlined destroy of [Regex2BNF.CharacterPredicate](&v26, &_s12ModelCatalog19AssetBackedResource_pSgMd, &_s12ModelCatalog19AssetBackedResource_pSgMR);
      return 0;
    }
  }

  return v4;
}

TokenGenerationCore::ModelConfigurationPromptTemplate_optional __swiftcall ModelConfiguration.promptTemplate(for:)(Swift::String a1)
{
  if (*v2 && (v3 = *(*v2 + 16)) != 0 && *(v3 + 16))
  {
    v4 = v1;
    countAndFlagsBits = a1._countAndFlagsBits;
    object = a1._object;

    v7 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
    if (v8)
    {
      v9 = (*(v3 + 56) + 16 * v7);
      v10 = v9[1];
      *v4 = *v9;
      v4[1] = v10;
    }

    else
    {

      *v4 = 0;
      v4[1] = 0;
    }
  }

  else
  {
    *v1 = 0;
    v1[1] = 0;
  }

  result.value.rawTemplateString = a1;
  result.is_nil = v11;
  return result;
}

uint64_t ModelConfiguration.speculativeDecodingDraftTokenCount.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0;
  }

  result = *(v1 + 24);
  v3 = *(v1 + 32);
  return result;
}

uint64_t protocol witness for ModelConfigurationProtocol.promptTemplate(for:) in conformance ModelConfiguration@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*v3 && (v4 = *v3, (v5 = *(*v3 + 16)) != 0))
  {
    v6 = result;
    v7 = *(v4 + 16);

    specialized Dictionary.subscript.getter(v6, a2, v5, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t ModelConfigurationPromptTemplate.rawTemplateString.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _LoadedModelConfiguration.AssetInformation.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _LoadedModelConfiguration.AssetInformation.version.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t _LoadedModelConfiguration.speculativeDecodingDraftTokenCount.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t key path getter for _LoadedModelConfiguration.assetInformation : _LoadedModelConfiguration@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[5];
  v5 = v3[6];
  v6 = v3[7];
  v7 = v3[8];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return outlined copy of _LoadedModelConfiguration.AssetInformation?(v4, v5);
}

uint64_t key path setter for _LoadedModelConfiguration.assetInformation : _LoadedModelConfiguration(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[5];
  v8 = v6[6];
  v9 = v6[7];
  v10 = v6[8];
  v6[5] = v2;
  v6[6] = v3;
  v6[7] = v4;
  v6[8] = v5;
  outlined copy of _LoadedModelConfiguration.AssetInformation?(v2, v3);
  return outlined consume of (start: String, end: String)?(v7, v8);
}

uint64_t _LoadedModelConfiguration.assetInformation.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return outlined copy of _LoadedModelConfiguration.AssetInformation?(v3, v4);
}

uint64_t _LoadedModelConfiguration.assetInformation.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = a1[1];
  *(v1 + 5) = *a1;
  *(v1 + 7) = v7;
  return outlined consume of (start: String, end: String)?(v3, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _LoadedModelConfiguration.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000022;
  }

  else
  {
    v4 = 0x655474706D6F7270;
  }

  if (v3)
  {
    v5 = 0xEF736574616C706DLL;
  }

  else
  {
    v5 = 0x80000001A8FD83E0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000022;
  }

  else
  {
    v6 = 0x655474706D6F7270;
  }

  if (*a2)
  {
    v7 = 0x80000001A8FD83E0;
  }

  else
  {
    v7 = 0xEF736574616C706DLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _LoadedModelConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _LoadedModelConfiguration.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _LoadedModelConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance _LoadedModelConfiguration.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of _LoadedModelConfiguration.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance _LoadedModelConfiguration.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0x80000001A8FD83E0;
  v3 = 0x655474706D6F7270;
  if (*v1)
  {
    v3 = 0xD000000000000022;
  }

  else
  {
    v2 = 0xEF736574616C706DLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance _LoadedModelConfiguration.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of _LoadedModelConfiguration.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _LoadedModelConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _LoadedModelConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _LoadedModelConfiguration.CodingKeys and conformance _LoadedModelConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static _LoadedModelConfiguration.assetBackedResource(for:catalogClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  v77 = *(v5 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v80 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v79 = v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v74 - v12;
  v14 = type metadata accessor for AssetBackedLLMBundle();
  v81 = *(v14 - 8);
  v15 = *(v81 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1AC57AE60](v5, v16);
  v19 = v91;
  dispatch thunk of CatalogClient.resourceBundle(for:)();
  v91 = v19;
  if (v19)
  {
  }

  v74[1] = a2;
  v21 = v79;
  v76 = a1;
  v75 = v5;

  outlined init with copy of (String, Any)(v90, v87, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  v22 = v81;
  v23 = (v81 + 56);
  if (!v88)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v87, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    (*v23)(v13, 1, 1, v14);
    v26 = v80;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog14ResourceBundle_pMd, &_s12ModelCatalog14ResourceBundle_pMR);
  v24 = swift_dynamicCast();
  (*(v22 + 56))(v13, v24 ^ 1u, 1, v14);
  v25 = (*(v22 + 48))(v13, 1, v14);
  v26 = v80;
  if (v25 == 1)
  {
LABEL_10:
    outlined destroy of [Regex2BNF.CharacterPredicate](v13, &_s12ModelCatalog20AssetBackedLLMBundleVSgMd, &_s12ModelCatalog20AssetBackedLLMBundleVSgMR);
    if (one-time initialization token for configuration != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Log.configuration);
    v37 = v77;
    v38 = v75;
    (*(v77 + 16))(v26, v76, v75);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v87[0] = v42;
      *v41 = 136446210;
      v43 = MEMORY[0x1AC57AE60](v38);
      v45 = v44;
      (*(v37 + 8))(v26, v38);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v87);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_1A8E85000, v39, v40, "Could not find a corresponding model bundle LLM bundle ID: %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1AC57DBF0](v42, -1, -1);
      MEMORY[0x1AC57DBF0](v41, -1, -1);
    }

    else
    {

      (*(v37 + 8))(v26, v38);
    }

    goto LABEL_30;
  }

  (*(v22 + 32))(v18, v13, v14);
  AssetBackedLLMBundle.adapter.getter();
  v27 = v88;
  if (!v88)
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v87, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMd, &_s12ModelCatalog21AssetBackedLLMAdapter_pSgMR);
    AssetBackedLLMBundle.baseModel.getter();
    v27 = v88;
  }

  v28 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v27);
  v29 = *(*(v28 + 8) + 8);
  v30 = dispatch thunk of CatalogResource.id.getter();
  v32 = v31;
  __swift_destroy_boxed_opaque_existential_0(v87);
  v33 = v21;
  v34 = v91;
  dispatch thunk of CatalogClient.resource(for:)();
  v91 = v34;
  v35 = v76;
  if (v34)
  {

    (*(v22 + 8))(v18, v14);
    return outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  outlined init with copy of (String, Any)(v87, v82, &_s12ModelCatalog0B8Resource_pSgMd, &_s12ModelCatalog0B8Resource_pSgMR);
  if (!v82[3])
  {
    outlined destroy of [Regex2BNF.CharacterPredicate](v82, &_s12ModelCatalog0B8Resource_pSgMd, &_s12ModelCatalog0B8Resource_pSgMR);
    v83 = 0u;
    v84 = 0u;
    v85 = 0;
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd, &_s12ModelCatalog0B8Resource_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog19AssetBackedResource_pMd, &_s12ModelCatalog19AssetBackedResource_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
    goto LABEL_24;
  }

  if (!*(&v84 + 1))
  {
LABEL_24:
    outlined destroy of [Regex2BNF.CharacterPredicate](&v83, &_s12ModelCatalog19AssetBackedResource_pSgMd, &_s12ModelCatalog19AssetBackedResource_pSgMR);
    if (one-time initialization token for configuration != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Log.configuration);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = v30;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v86[0] = v71;
      *v70 = 136446210;
      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v32, v86);

      *(v70 + 4) = v72;
      _os_log_impl(&dword_1A8E85000, v67, v68, "Model catalog asset: %{public}s is not an asset backed resource", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x1AC57DBF0](v71, -1, -1);
      MEMORY[0x1AC57DBF0](v70, -1, -1);
    }

    else
    {
    }

    outlined destroy of [Regex2BNF.CharacterPredicate](v87, &_s12ModelCatalog0B8Resource_pSgMd, &_s12ModelCatalog0B8Resource_pSgMR);
    (*(v22 + 8))(v18, v14);
LABEL_30:
    result = outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    v73 = v78;
    *(v78 + 32) = 0;
    *v73 = 0u;
    v73[1] = 0u;
    return result;
  }

  outlined init with take of PromptComponentValueConvertible(&v83, v86);
  if (one-time initialization token for configuration != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Log.configuration);
  v48 = v77;
  v49 = v21;
  v50 = v75;
  (*(v77 + 16))(v49, v35, v75);
  outlined init with copy of GuidedGenerationTokenizer(v86, &v83);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v82[0] = v80;
    *v53 = 136315394;
    v54 = MEMORY[0x1AC57AE60](v50);
    v55 = v33;
    v57 = v56;
    (*(v48 + 8))(v55, v50);
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v57, v82);

    *(v53 + 4) = v58;
    *(v53 + 12) = 2080;
    v59 = v85;
    __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
    v60 = *(v59 + 8);
    v61 = dispatch thunk of CatalogResource.id.getter();
    v63 = v62;
    __swift_destroy_boxed_opaque_existential_0(&v83);
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v82);

    *(v53 + 14) = v64;
    _os_log_impl(&dword_1A8E85000, v51, v52, "_LoadedModelConfiguration: Resolved model bundle identifier: %s to resource: %s", v53, 0x16u);
    v65 = v80;
    swift_arrayDestroy();
    MEMORY[0x1AC57DBF0](v65, -1, -1);
    MEMORY[0x1AC57DBF0](v53, -1, -1);

    outlined destroy of [Regex2BNF.CharacterPredicate](v87, &_s12ModelCatalog0B8Resource_pSgMd, &_s12ModelCatalog0B8Resource_pSgMR);
    (*(v81 + 8))(v18, v14);
    outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
  }

  else
  {

    (*(v48 + 8))(v33, v50);
    outlined destroy of [Regex2BNF.CharacterPredicate](v87, &_s12ModelCatalog0B8Resource_pSgMd, &_s12ModelCatalog0B8Resource_pSgMR);
    (*(v81 + 8))(v18, v14);
    outlined destroy of [Regex2BNF.CharacterPredicate](v90, &_s12ModelCatalog14ResourceBundle_pSgMd, &_s12ModelCatalog14ResourceBundle_pSgMR);
    __swift_destroy_boxed_opaque_existential_0(&v83);
  }

  return outlined init with take of PromptComponentValueConvertible(v86, v78);
}

void *_LoadedModelConfiguration.deinit()
{
  v1 = v0[2];

  v2 = v0[7];
  v3 = v0[8];
  outlined consume of (start: String, end: String)?(v0[5], v0[6]);
  return v0;
}

uint64_t _LoadedModelConfiguration.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[7];
  v3 = v0[8];
  outlined consume of (start: String, end: String)?(v0[5], v0[6]);

  return swift_deallocClassInstance();
}

uint64_t *closure #1 in CatalogClient.metadataWithAssetInformation(from:catalogClient:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v37 = type metadata accessor for AssetVersion();
  v33 = *(v37 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v31 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v32 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1(v34);
  dispatch thunk of AssetBackedResource.fetchLockedAsset(with:)();
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_1(v34);
  }

  v27 = v7;
  v28 = v6;
  __swift_project_boxed_opaque_existential_1(v34, AssociatedTypeWitness);
  v12 = swift_getAssociatedTypeWitness();
  v26[1] = v26;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v26 - v15;
  dispatch thunk of CatalogAssetProtocol.contents.getter();
  swift_getAssociatedConformanceWitness();
  v17 = v32;
  dispatch thunk of AssetContents.metadataURL.getter();
  (*(v13 + 8))(v16, v12);
  v18 = v31;
  dispatch thunk of CatalogAssetProtocol.version.getter();
  v19 = AssetVersion.number.getter();
  v21 = v20;
  (*(v33 + 8))(v18, v37);
  v22 = Data.init(contentsOf:options:)();
  v24 = v23;
  (*(v27 + 8))(v17, v28);
  v25 = v29;
  *v29 = v22;
  v25[1] = v24;
  v25[2] = v19;
  v25[3] = v21;
  return __swift_destroy_boxed_opaque_existential_0(v34);
}

void specialized CatalogClient.metadataWithAssetInformation(from:catalogClient:)(void *a1)
{
  v3 = type metadata accessor for CatalogErrors.AssetErrors();
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for CoherentAssetLock();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A8FC9400;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = *(v8 + 8);
  *(v7 + 32) = dispatch thunk of CatalogResource.id.getter();
  *(v7 + 40) = v10;
  v11 = static CoherentAssetLock.createUnlockedAssetLock(resources:client:)();
  if (v1)
  {

    v35 = v1;
    v14 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v15 = swift_dynamicCast();
    v16 = v32;
    if (v15)
    {
      if ((*(v32 + 88))(v6, v3) == *MEMORY[0x1E69B2140])
      {

        (*(v16 + 96))(v6, v3);
        v18 = *v6;
        v17 = v6[1];
        if (one-time initialization token for configuration != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Log.configuration);
        outlined init with copy of GuidedGenerationTokenizer(a1, v34);

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v33 = v23;
          *v22 = 136315394;
          v24 = v34[4];
          __swift_project_boxed_opaque_existential_1(v34, v34[3]);
          v25 = *(v24 + 8);
          v26 = dispatch thunk of CatalogResource.id.getter();
          v28 = v27;
          __swift_destroy_boxed_opaque_existential_0(v34);
          v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v33);

          *(v22 + 4) = v29;
          *(v22 + 12) = 2080;
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v33);

          *(v22 + 14) = v30;
          _os_log_impl(&dword_1A8E85000, v20, v21, "ModelConfiguration: Unable to find asset (%s. Reason: %s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1AC57DBF0](v23, -1, -1);
          MEMORY[0x1AC57DBF0](v22, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(v34);
        }
      }

      else
      {
        (*(v16 + 8))(v6, v3);
      }
    }
  }

  else
  {
    v12 = v11;

    MEMORY[0x1EEE9AC00](v13);
    *(&v31 - 2) = a1;
    *(&v31 - 1) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV8metadata_SS7versiontSgMd, &_s10Foundation4DataV8metadata_SS7versiontSgMR);
    dispatch thunk of CoherentAssetLock.withLock<A>(closure:)();
  }
}

uint64_t outlined copy of _LoadedModelConfiguration.AssetInformation?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ModelConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1AC57DBF0);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = _StringObject.sharedUTF8.getter();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  if (qword_1A8FD0DD0[a1] == qword_1A8FD0DD0[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

{
  if (qword_1A8FD0D98[a1] == qword_1A8FD0D98[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000072;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD00000000000001BLL;
    }

    else
    {
      v5 = 0x65646F4338667475;
    }

    if (v3 == 2)
    {
      v4 = 0x80000001A8FD8270;
    }

    else
    {
      v4 = 0xEC00000074696E55;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xEC00000074655372;
    }

    else
    {
      v4 = 0xE900000000000072;
    }

    v5 = 0x6574636172616863;
  }

  v6 = 0xD00000000000001BLL;
  v7 = 0x80000001A8FD8270;
  if (a2 != 2)
  {
    v6 = 0x65646F4338667475;
    v7 = 0xEC00000074696E55;
  }

  if (a2)
  {
    v2 = 0xEC00000074655372;
  }

  if (a2 <= 1u)
  {
    v8 = 0x6574636172616863;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6574636172616863;
    }

    else
    {
      v3 = 1684957547;
    }

    if (v2)
    {
      v4 = 0xE900000000000072;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v3 = 0x6574636172616863;
      v5 = 1952797554;
    }

    else
    {
      if (a1 == 3)
      {
        v3 = 0xD00000000000001BLL;
        v4 = 0x80000001A8FD8270;
        goto LABEL_14;
      }

      v3 = 0x65646F4338667475;
      v5 = 1953066581;
    }

    v4 = v5 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  }

LABEL_14:
  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x6574636172616863;
    }

    else
    {
      v7 = 1684957547;
    }

    if (a2)
    {
      v6 = 0xE900000000000072;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (a2 == 2)
  {
    v8 = 0x6574636172616863;
    v9 = 1952797554;
  }

  else
  {
    if (a2 == 3)
    {
      v6 = 0x80000001A8FD8270;
      if (v3 != 0xD00000000000001BLL)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v8 = 0x65646F4338667475;
    v9 = 1953066581;
  }

  v6 = v9 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v3 != v8)
  {
LABEL_32:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_30:
  if (v4 != v6)
  {
    goto LABEL_32;
  }

  v10 = 1;
LABEL_33:

  return v10 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x65747441666C6573;
    }

    else
    {
      v5 = 0x676E69727473;
    }

    if (v2)
    {
      v6 = 0xED00006E6F69746ELL;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v3 = 0x6E69646465626D65;
    v4 = 0xED00006874615067;
    if (a1 != 3)
    {
      v3 = 0xD000000000000015;
      v4 = 0x80000001A8FD83A0;
    }

    if (a1 == 2)
    {
      v5 = 0x7461506567616D69;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE900000000000068;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x65747441666C6573;
    }

    else
    {
      v11 = 0x676E69727473;
    }

    if (a2)
    {
      v10 = 0xED00006E6F69746ELL;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x6E69646465626D65;
    v8 = 0x80000001A8FD83A0;
    if (a2 == 3)
    {
      v8 = 0xED00006874615067;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (a2 == 2)
    {
      v9 = 0x7461506567616D69;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE900000000000068;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  v3 = qword_1A8FD0D98[a2];
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t Npy.header.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
}

uint64_t Npy.data.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t Npy.Header.DataType.description.getter()
{
  v1 = qword_1A8FD0D98[v0[1]];
  v3 = qword_1A8FD0DD0[*v0];

  MEMORY[0x1AC57C120](v1, 0xE200000000000000);

  return v3;
}

TokenGenerationCore::Npy::Header::DataType::Endianness_optional __swiftcall Npy.Header.DataType.Endianness.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Npy.Header.DataType.Endianness.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Npy.Header.DataType.Endianness()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = qword_1A8FD0DD0[v1];
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Npy.Header.DataType.Endianness()
{
  v1 = qword_1A8FD0DD0[*v0];
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Npy.Header.DataType.Endianness()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = qword_1A8FD0DD0[v1];
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t Npy.Header.DataType.DType.init<A>(type:)@<X0>(char *a1@<X8>)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    v3 = 0;
LABEL_15:
    *a1 = v3;
    return result;
  }

  result = swift_dynamicCastMetatype();
  if (result)
  {
    v3 = 1;
    goto LABEL_15;
  }

  result = swift_dynamicCastMetatype();
  if (result)
  {
    v3 = 2;
    goto LABEL_15;
  }

  result = swift_dynamicCastMetatype();
  if (result)
  {
    v3 = 3;
    goto LABEL_15;
  }

  result = swift_dynamicCastMetatype();
  if (result)
  {
    v3 = 4;
    goto LABEL_15;
  }

  result = swift_dynamicCastMetatype();
  if (result)
  {
    v3 = 5;
    goto LABEL_15;
  }

  result = swift_dynamicCastMetatype();
  if (result)
  {
    v3 = 6;
    goto LABEL_15;
  }

  lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
  swift_allocError();
  *v4 = 2;
  return swift_willThrow();
}

unint64_t lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError()
{
  result = lazy protocol witness table cache variable for type Npy.NpyParseError and conformance Npy.NpyParseError;
  if (!lazy protocol witness table cache variable for type Npy.NpyParseError and conformance Npy.NpyParseError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Npy.NpyParseError and conformance Npy.NpyParseError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Npy.NpyParseError and conformance Npy.NpyParseError;
  if (!lazy protocol witness table cache variable for type Npy.NpyParseError and conformance Npy.NpyParseError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Npy.NpyParseError and conformance Npy.NpyParseError);
  }

  return result;
}

TokenGenerationCore::Npy::Header::DataType::DType_optional __swiftcall Npy.Header.DataType.DType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Npy.Header.DataType.DType.init(rawValue:), v3);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Npy.Header.DataType.DType()
{
  v1 = qword_1A8FD0D98[*v0];
  String.hash(into:)();
}

uint64_t static Npy.Header.DataType.== infix(_:_:)(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (qword_1A8FD0DD0[*a1] == qword_1A8FD0DD0[*a2])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRelease_n();
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Npy.Header.DataType(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((specialized == infix<A>(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}

uint64_t Npy.Header.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v125 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
  v127 = *(v6 - 8);
  v128 = v6;
  v7 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v126 = &v116 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Ss5shapet_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss5shapet_GSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v130 = &v116 - v11;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_Ss5shapetGMd, &_s17_StringProcessing5RegexVySs_Ss5shapetGMR);
  v129 = *(v132 - 8);
  v12 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v116 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Ss14isFortranOrdert_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss14isFortranOrdert_GSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  *&v134 = &v116 - v16;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_Ss14isFortranOrdertGMd, &_s17_StringProcessing5RegexVySs_Ss14isFortranOrdertGMR);
  v133 = *(v136 - 8);
  v17 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v116 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Ss5descrt_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss5descrt_GSgMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v116 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVySs_Ss5descrtGMd, &_s17_StringProcessing5RegexVySs_Ss5descrtGMR);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v116 - v26;
  v28 = type metadata accessor for String.Encoding();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  static String.Encoding.ascii.getter();
  v30 = String.init(data:encoding:)();
  if (!v31)
  {
    lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();
    v34 = a1;
    v35 = a2;
    return outlined consume of Data._Representation(v34, v35);
  }

  v137 = a1;
  v32 = v31;
  v33 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_Ss5descrtMd, &_sSs_Ss5descrtMR);
  Regex.init(_regexString:version:)();
  Regex.firstMatch(in:)();
  if (v3)
  {
    (*(v24 + 8))(v27, v23);

    v34 = v137;
    v35 = a2;
    return outlined consume of Data._Representation(v34, v35);
  }

  v123 = v32;
  v120 = v33;
  v121 = v27;
  v124 = v23;
  v122 = v24;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Ss5descrt_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss5descrt_GMR);
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v22, 1, v38) == 1)
  {

    outlined destroy of [Regex2BNF.CharacterPredicate](v22, &_s17_StringProcessing5RegexV5MatchVySs_Ss5descrt_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss5descrt_GSgMR);
    lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
    swift_allocError();
    *v40 = 3;
    swift_willThrow();
    v41 = v137;
    v42 = a2;
LABEL_10:
    outlined consume of Data._Representation(v41, v42);
    return (*(v122 + 8))(v121, v124);
  }

  v118 = 0;
  v119 = a2;
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v43 = v140;
  v44 = v141;
  v45 = v142;
  (*(v39 + 8))(v22, v38);
  v46 = MEMORY[0x1AC57C040](v43, *(&v43 + 1), v44, v45);
  v48 = v47;

  v139._countAndFlagsBits = v46;
  v139._object = v48;

  v49 = String.count.getter();

  if (v49 < 3)
  {

    lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();
    v41 = v137;
    v42 = v119;
    goto LABEL_10;
  }

  v51 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v51 = v46 & 0xFFFFFFFFFFFFLL;
  }

  v52 = v119;
  v53 = v137;
  if (v51)
  {
    result = specialized Collection.first.getter(v46, v48);
    if (!v54)
    {
      __break(1u);
      return result;
    }

    v55 = result;
    v56 = v54;
    specialized RangeReplaceableCollection.removeFirst(_:)(1);
    v57._countAndFlagsBits = v55;
    v57._object = v56;
    v58 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Npy.Header.DataType.Endianness.init(rawValue:), v57);

    if (v58 >= 4)
    {

      v60 = v124;
      goto LABEL_20;
    }

    Npy.Header.DataType.DType.init(rawValue:)(v139);
    v59 = v140;
    v60 = v124;
    if (v140 == 7)
    {

LABEL_20:
      v61 = v121;
      lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
      swift_allocError();
      *v62 = 2;
      swift_willThrow();
      outlined consume of Data._Representation(v53, v52);
      return (*(v122 + 8))(v61, v60);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_Ss14isFortranOrdertMd, &_sSs_Ss14isFortranOrdertMR);
    v63 = v135;
    Regex.init(_regexString:version:)();
    v64 = v134;
    v65 = v136;
    v66 = v118;
    Regex.firstMatch(in:)();
    v118 = v66;
    if (v66)
    {

      outlined consume of Data._Representation(v53, v52);
      (*(v133 + 8))(v63, v65);
      return (*(v122 + 8))(v121, v60);
    }

    v117 = v59;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Ss14isFortranOrdert_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss14isFortranOrdert_GMR);
    v68 = v64;
    v69 = *(v67 - 8);
    if ((*(v69 + 48))(v68, 1, v67) == 1)
    {

      outlined destroy of [Regex2BNF.CharacterPredicate](v68, &_s17_StringProcessing5RegexV5MatchVySs_Ss14isFortranOrdert_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss14isFortranOrdert_GSgMR);
      lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
      swift_allocError();
      *v70 = 4;
      swift_willThrow();
      outlined consume of Data._Representation(v53, v52);
LABEL_27:
      (*(v133 + 8))(v135, v136);
      return (*(v122 + 8))(v121, v124);
    }

    v116 = v58;
    swift_getKeyPath();
    Regex.Match.subscript.getter();

    v71 = v140;
    v72 = v141;
    v73 = v142;
    (*(v69 + 8))(v68, v67);
    v74 = specialized static StringProtocol.== infix<A>(_:_:)(v71, *(&v71 + 1), v72, v73, 1702195796, 0xE400000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSs_Ss5shapetMd, &_sSs_Ss5shapetMR);
    v75 = v131;
    Regex.init(_regexString:version:)();
    v76 = v130;
    v77 = v132;
    v78 = v118;
    Regex.firstMatch(in:)();
    if (v78)
    {

      outlined consume of Data._Representation(v137, v119);
      (*(v129 + 8))(v75, v77);
      goto LABEL_27;
    }

    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVySs_Ss5shapet_GMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss5shapet_GMR);
    v80 = *(v79 - 8);
    v81 = (*(v80 + 48))(v76, 1, v79);
    v82 = v137;
    v38 = v124;
    if (v81 == 1)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v76, &_s17_StringProcessing5RegexV5MatchVySs_Ss5shapet_GSgMd, &_s17_StringProcessing5RegexV5MatchVySs_Ss5shapet_GSgMR);
      lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
      swift_allocError();
      *v83 = 5;
      swift_willThrow();
      v84 = v82;
LABEL_48:
      outlined consume of Data._Representation(v84, v119);
      (*(v129 + 8))(v75, v77);
      (*(v133 + 8))(v135, v136);
      return (*(v122 + 8))(v121, v38);
    }

    LODWORD(v123) = v74;
    v118 = 0;
    swift_getKeyPath();
    Regex.Match.subscript.getter();

    v134 = v140;
    v85 = v141;
    v86 = v142;
    (*(v80 + 8))(v76, v79);
    v140 = v134;
    v141 = v85;
    v142 = v86;
    v87 = v126;
    Regex.init(_regexString:version:)();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type Regex<Substring> and conformance Regex<A>, &_s17_StringProcessing5RegexVySsGMd, &_s17_StringProcessing5RegexVySsGMR);
    v88 = v128;
    v89 = BidirectionalCollection<>.split<A>(separator:maxSplits:omittingEmptySubsequences:)();
    (*(v127 + 8))(v87, v88);

    v90 = *(v89 + 16);
    if (!v90)
    {

      lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
      swift_allocError();
      *v113 = 5;
      swift_willThrow();
      v84 = v137;
      goto LABEL_48;
    }

    LODWORD(v134) = v123 & 1;
    v143 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90, 0);
    v91 = 0;
    v92 = v143;
    v93 = (v89 + 56);
    while (v91 < *(v89 + 16))
    {
      v94 = *(v93 - 3);
      v95 = *(v93 - 2);
      v96 = *v93;
      if (!((v95 ^ v94) >> 14))
      {
        goto LABEL_51;
      }

      v97 = *(v93 - 1);
      if ((v96 & 0x1000000000000000) != 0)
      {
        v105 = *v93;
        v106 = *(v93 - 3);
        v107 = *(v93 - 2);
        v130 = *(v93 - 1);
        swift_bridgeObjectRetain_n();
        v100 = specialized _parseInteger<A, B>(ascii:radix:)(v106, v107, v130, v96, 10);
        LOBYTE(v106) = v108;

        if (v106)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if ((v96 & 0x2000000000000000) != 0)
        {
          *&v140 = *(v93 - 1);
          *(&v140 + 1) = v96 & 0xFFFFFFFFFFFFFFLL;
          v98 = &v140;
        }

        else if ((v97 & 0x1000000000000000) != 0)
        {
          v98 = ((v96 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v109 = *(v93 - 3);
          v110 = *v93;
          v111 = *(v93 - 2);
          v112 = *(v93 - 1);
          v98 = _StringObject.sharedUTF8.getter();
          v97 = v112;
          v38 = v124;
          v94 = v109;
          v95 = v111;
        }

        v99 = v118;
        v100 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(v98, v94, v95, v97, v96, 10);
        v118 = v99;
        v138 = v101 & 1;
        LOBYTE(v99) = v101 & 1;

        if (v99)
        {
          goto LABEL_52;
        }
      }

      v143 = v92;
      v103 = *(v92 + 16);
      v102 = *(v92 + 24);
      if (v103 >= v102 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1);
        v92 = v143;
      }

      ++v91;
      *(v92 + 16) = v103 + 1;
      *(v92 + 8 * v103 + 32) = v100;
      v93 += 4;
      v104 = v137;
      v38 = v124;
      if (v90 == v91)
      {

        outlined consume of Data._Representation(v104, v119);
        (*(v129 + 8))(v131, v132);
        (*(v133 + 8))(v135, v136);
        result = (*(v122 + 8))(v121, v38);
        v114 = v125;
        *v125 = v116;
        v114[1] = v117;
        v114[2] = v134;
        *(v114 + 1) = v92;
        return result;
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_51:

LABEL_52:

  lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
  swift_allocError();
  *v115 = 6;
  swift_willThrow();
  outlined consume of Data._Representation(v137, v119);

  (*(v129 + 8))(v131, v132);
  (*(v133 + 8))(v135, v136);
  (*(v122 + 8))(v121, v38);
}

uint64_t Npy.init(header:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 2);
  v5 = *(result + 8);
  *a4 = *result;
  *(a4 + 2) = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

uint64_t Npy.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v71 = *MEMORY[0x1E69E9840];
  v8 = Data._Representation.subscript.getter();
  if (v8 == 1)
  {
    v9 = 10;
  }

  else
  {
    if (v8 != 2)
    {
LABEL_15:
      lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
      swift_allocError();
      *v24 = 0;
      swift_willThrow();
LABEL_56:
      result = outlined consume of Data._Representation(a1, a2);
LABEL_71:
      v59 = *MEMORY[0x1E69E9840];
      return result;
    }

    v9 = 12;
  }

  v10 = Data._Representation.subscript.getter();
  v69 = MEMORY[0x1E6969080];
  v70 = MEMORY[0x1E6969078];
  v67 = v10;
  v68 = v11;
  v12 = __swift_project_boxed_opaque_existential_1(&v67, MEMORY[0x1E6969080]);
  v13 = *v12;
  v14 = v12[1];
  v15 = v14 >> 62;
  v64 = a3;
  if ((v14 >> 62) <= 1)
  {
    if (!v15)
    {
      v65[0] = *v12;
      LOWORD(v65[1]) = v14;
      BYTE2(v65[1]) = BYTE2(v14);
      BYTE3(v65[1]) = BYTE3(v14);
      BYTE4(v65[1]) = BYTE4(v14);
      BYTE5(v65[1]) = BYTE5(v14);
      v16 = v65 + BYTE6(v14);
      v17 = v65;
      goto LABEL_28;
    }

    v25 = v13;
    v26 = v13 >> 32;
    v23 = v26 - v25;
    if (v26 < v25)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v20 = __DataStorage._bytes.getter();
    if (v20)
    {
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v20 += v25 - v27;
    }

    goto LABEL_20;
  }

  if (v15 != 2)
  {
    memset(v65, 0, 14);
    v17 = v65;
    v16 = v65;
    goto LABEL_28;
  }

  v18 = *(v13 + 16);
  v19 = *(v13 + 24);
  v20 = __DataStorage._bytes.getter();
  if (v20)
  {
    v21 = __DataStorage._offset.getter();
    if (__OFSUB__(v18, v21))
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v20 += v18 - v21;
  }

  v22 = __OFSUB__(v19, v18);
  v23 = v19 - v18;
  if (v22)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_20:
  v28 = MEMORY[0x1AC57AAA0]();
  if (v28 >= v23)
  {
    v29 = v23;
  }

  else
  {
    v29 = v28;
  }

  v30 = (v29 + v20);
  if (v20)
  {
    v16 = v30;
  }

  else
  {
    v16 = 0;
  }

  v17 = v20;
LABEL_28:
  closure #1 in Data.init<A>(_:)(v17, v16, v66);
  v31 = v66[0];
  v32 = v66[1];
  result = __swift_destroy_boxed_opaque_existential_0(&v67);
  v34 = v32 >> 62;
  if ((v32 >> 62) <= 1)
  {
    if (!v34)
    {
      v35 = v31;
      goto LABEL_44;
    }

    if (v31 > v31 >> 32)
    {
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v40 = __DataStorage._bytes.getter();
    if (!v40)
    {
LABEL_64:
      MEMORY[0x1AC57AAA0]();
      goto LABEL_65;
    }

    v41 = v40;
    v42 = __DataStorage._offset.getter();
    if (__OFSUB__(v31, v42))
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    v38 = (v31 - v42 + v41);
    MEMORY[0x1AC57AAA0]();
    if (v38)
    {
      goto LABEL_37;
    }

    goto LABEL_65;
  }

  if (v34 == 2)
  {
    v37 = *(v31 + 16);
    v36 = *(v31 + 24);
    v38 = __DataStorage._bytes.getter();
    if (v38)
    {
      v39 = __DataStorage._offset.getter();
      if (__OFSUB__(v37, v39))
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v38 = (v38 + v37 - v39);
    }

    if (__OFSUB__(v36, v37))
    {
      goto LABEL_76;
    }

    MEMORY[0x1AC57AAA0]();
    if (v38)
    {
LABEL_37:
      v4 = v3;
      v35 = *v38;
      result = outlined consume of Data._Representation(v31, v32);
      goto LABEL_44;
    }

LABEL_65:
    lazy protocol witness table accessor for type Npy.NpyParseError and conformance Npy.NpyParseError();
    swift_allocError();
    *v55 = 1;
    swift_willThrow();
    outlined consume of Data._Representation(a1, a2);
    result = outlined consume of Data._Representation(v31, v32);
    goto LABEL_71;
  }

  v35 = 0;
LABEL_44:
  v43 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v43)
    {
      v44 = BYTE6(a2);
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (v43 != 2)
  {
    goto LABEL_82;
  }

  v46 = *(a1 + 16);
  v45 = *(a1 + 24);
  v44 = v45 - v46;
  if (__OFSUB__(v45, v46))
  {
    __break(1u);
LABEL_51:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v44 = HIDWORD(a1) - a1;
  }

LABEL_53:
  if (v44 >= v9)
  {
    v32 = Data.subdata(in:)();
    v31 = v47;
    v48 = Data.subdata(in:)();
    v50 = v49;
    outlined copy of Data._Representation(v48, v49);
    Npy.Header.init(from:)(v48, v50, &v67);
    if (v4)
    {
      outlined consume of Data._Representation(v48, v50);
      outlined consume of Data._Representation(v32, v31);
      goto LABEL_56;
    }

    v51 = v31 >> 62;
    if ((v31 >> 62) <= 1)
    {
      if (v51)
      {
        if (__OFSUB__(HIDWORD(v32), v32))
        {
          goto LABEL_81;
        }

        v52 = HIDWORD(v32) - v32;
      }

      else
      {
        v52 = BYTE6(v31);
      }

      goto LABEL_69;
    }

    if (v51 != 2)
    {
      v52 = 0;
LABEL_69:
      v60 = v68;
      v61 = BYTE2(v67);
      v62 = BYTE1(v67);
      v63 = v67;
      if (v52 >= v35)
      {
        v56 = Data.subdata(in:)();
        v58 = v57;
        outlined consume of Data._Representation(v48, v50);
        outlined consume of Data._Representation(v32, v31);
        result = outlined consume of Data._Representation(a1, a2);
        *v64 = v63;
        *(v64 + 1) = v62;
        *(v64 + 2) = v61;
        *(v64 + 8) = v60;
        *(v64 + 16) = v56;
        *(v64 + 24) = v58;
        goto LABEL_71;
      }

      __break(1u);
      goto LABEL_73;
    }

    v54 = *(v32 + 16);
    v53 = *(v32 + 24);
    v52 = v53 - v54;
    if (!__OFSUB__(v53, v54))
    {
      goto LABEL_69;
    }

    __break(1u);
    goto LABEL_64;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t Npy.makeArray<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v108 = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 1);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = v8 >> 62;
  if (v6 > 2)
  {
    if (*(v3 + 1) > 4u)
    {
      if (v6 != 5)
      {
        if (v9 <= 1)
        {
          if (v9)
          {
            v89 = v7;
            v90 = v7 >> 32;
            v53 = v90 - v89;
            if (v90 < v89)
            {
LABEL_196:
              __break(1u);
              goto LABEL_197;
            }

            v91 = __DataStorage._bytes.getter();
            if (v91)
            {
              v92 = v91;
              v93 = __DataStorage._offset.getter();
              if (__OFSUB__(v89, v93))
              {
                goto LABEL_210;
              }

              v51 = v89 - v93 + v92;
LABEL_162:
              a1 = MEMORY[0x1AC57AAA0]();
              if (a1 >= v53)
              {
                v94 = v53;
              }

              else
              {
                v94 = a1;
              }

              v22 = v94 / 8;
              if (v51)
              {
                v23 = v51;
              }

              else
              {
                v23 = 0;
              }

              if (!v51)
              {
                v22 = 0;
              }

              goto LABEL_188;
            }

            a1 = MEMORY[0x1AC57AAA0]();
            v23 = 0;
            v22 = 0;
          }

          else
          {
            v22 = (v8 >> 51) & 0x1F;
            v23 = &v106;
          }

          goto LABEL_188;
        }

LABEL_70:
        if (v9 == 2)
        {
          v49 = *(v7 + 16);
          v50 = *(v7 + 24);
          v51 = __DataStorage._bytes.getter();
          if (v51)
          {
            v52 = __DataStorage._offset.getter();
            v7 = v49 - v52;
            if (__OFSUB__(v49, v52))
            {
LABEL_203:
              __break(1u);
              goto LABEL_204;
            }

            v51 += v7;
          }

          v27 = __OFSUB__(v50, v49);
          v53 = v50 - v49;
          if (!v27)
          {
            goto LABEL_162;
          }

          __break(1u);
          goto LABEL_77;
        }

        v22 = 0;
        v23 = &v106;
LABEL_188:
        v106 = v23;
        v107 = v22;
        MEMORY[0x1EEE9AC00](a1);
        v104 = a2;
        v105 = a3;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRySdGMd, &_sSRySdGMR);
        v96 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type UnsafeBufferPointer<Double> and conformance UnsafeBufferPointer<A>, &_sSRySdGMd, &_sSRySdGMR);
        v98 = MEMORY[0x1E69E73E0];
        v99 = MEMORY[0x1E69E7410];
        v100 = partial apply for closure #14 in Npy.makeArray<A>(type:);
        goto LABEL_189;
      }

      if (v9 <= 1)
      {
        if (v9)
        {
          v77 = v7;
          v78 = v7 >> 32;
          v44 = v78 - v77;
          if (v78 < v77)
          {
LABEL_194:
            __break(1u);
            goto LABEL_195;
          }

          v79 = __DataStorage._bytes.getter();
          if (v79)
          {
            v80 = v79;
            v81 = __DataStorage._offset.getter();
            if (__OFSUB__(v77, v81))
            {
LABEL_208:
              __break(1u);
              goto LABEL_209;
            }

            v43 = (v77 - v81 + v80);
LABEL_136:
            a1 = MEMORY[0x1AC57AAA0]();
            if (a1 >= v44)
            {
              v82 = v44;
            }

            else
            {
              v82 = a1;
            }

            v14 = v82 / 4;
            if (v43)
            {
              v15 = v43;
            }

            else
            {
              v15 = 0;
            }

            if (!v43)
            {
              v14 = 0;
            }

            goto LABEL_184;
          }

          a1 = MEMORY[0x1AC57AAA0]();
          v15 = 0;
          v14 = 0;
        }

        else
        {
          v14 = (v8 >> 50) & 0x3F;
          v15 = &v106;
        }

        goto LABEL_184;
      }

LABEL_56:
      if (v9 == 2)
      {
        v41 = *(v7 + 16);
        v42 = *(v7 + 24);
        a1 = __DataStorage._bytes.getter();
        v43 = a1;
        if (a1)
        {
          a1 = __DataStorage._offset.getter();
          v7 = v41 - a1;
          if (__OFSUB__(v41, a1))
          {
LABEL_201:
            __break(1u);
            goto LABEL_202;
          }

          v43 = (v43 + v7);
        }

        v27 = __OFSUB__(v42, v41);
        v44 = v42 - v41;
        if (!v27)
        {
          goto LABEL_136;
        }

        __break(1u);
        goto LABEL_63;
      }

      v14 = 0;
      v15 = &v106;
LABEL_184:
      v106 = v15;
      v107 = v14;
      MEMORY[0x1EEE9AC00](a1);
      v104 = a2;
      v105 = a3;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRySfGMd, &_sSRySfGMR);
      v96 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type UnsafeBufferPointer<Float> and conformance UnsafeBufferPointer<A>, &_sSRySfGMd, &_sSRySfGMR);
      v98 = MEMORY[0x1E69E73E0];
      v99 = MEMORY[0x1E69E7410];
      v100 = partial apply for closure #12 in Npy.makeArray<A>(type:);
      goto LABEL_189;
    }

    if (v6 != 3)
    {
      if (v9 <= 1)
      {
        if (v9)
        {
          v83 = v7;
          v84 = v7 >> 32;
          v48 = v84 - v83;
          if (v84 < v83)
          {
LABEL_195:
            __break(1u);
            goto LABEL_196;
          }

          v85 = __DataStorage._bytes.getter();
          if (v85)
          {
            v86 = v85;
            v87 = __DataStorage._offset.getter();
            if (__OFSUB__(v83, v87))
            {
LABEL_209:
              __break(1u);
LABEL_210:
              __break(1u);
            }

            v47 = (v83 - v87 + v86);
LABEL_149:
            a1 = MEMORY[0x1AC57AAA0]();
            if (a1 >= v48)
            {
              v88 = v48;
            }

            else
            {
              v88 = a1;
            }

            v20 = v88 / 2;
            if (v47)
            {
              v21 = v47;
            }

            else
            {
              v21 = 0;
            }

            if (!v47)
            {
              v20 = 0;
            }

            goto LABEL_186;
          }

          a1 = MEMORY[0x1AC57AAA0]();
          v21 = 0;
          v20 = 0;
        }

        else
        {
          v20 = (v8 >> 49) & 0x7F;
          v21 = &v106;
        }

        goto LABEL_186;
      }

LABEL_63:
      if (v9 == 2)
      {
        v45 = *(v7 + 16);
        v46 = *(v7 + 24);
        a1 = __DataStorage._bytes.getter();
        v47 = a1;
        if (a1)
        {
          a1 = __DataStorage._offset.getter();
          v7 = v45 - a1;
          if (__OFSUB__(v45, a1))
          {
LABEL_202:
            __break(1u);
            goto LABEL_203;
          }

          v47 = (v47 + v7);
        }

        v27 = __OFSUB__(v46, v45);
        v48 = v46 - v45;
        if (!v27)
        {
          goto LABEL_149;
        }

        __break(1u);
        goto LABEL_70;
      }

      v20 = 0;
      v21 = &v106;
LABEL_186:
      v106 = v21;
      v107 = v20;
      MEMORY[0x1EEE9AC00](a1);
      v104 = a2;
      v105 = a3;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys7Float16VGMd, &_sSRys7Float16VGMR);
      v96 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type UnsafeBufferPointer<Float16> and conformance UnsafeBufferPointer<A>, &_sSRys7Float16VGMd, &_sSRys7Float16VGMR);
      v98 = MEMORY[0x1E69E73E0];
      v99 = MEMORY[0x1E69E7410];
      v100 = partial apply for closure #10 in Npy.makeArray<A>(type:);
      goto LABEL_189;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        v10 = (v8 >> 51) & 0x1F;
        v11 = &v106;
LABEL_182:
        v106 = v11;
        v107 = v10;
        MEMORY[0x1EEE9AC00](a1);
        v104 = a2;
        v105 = a3;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys6UInt64VGMd, &_sSRys6UInt64VGMR);
        v96 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt64> and conformance UnsafeBufferPointer<A>, &_sSRys6UInt64VGMd, &_sSRys6UInt64VGMR);
        v98 = MEMORY[0x1E69E73E0];
        v99 = MEMORY[0x1E69E7410];
        v100 = partial apply for closure #8 in Npy.makeArray<A>(type:);
        goto LABEL_189;
      }

      v71 = v7;
      v72 = v7 >> 32;
      v40 = v72 - v71;
      if (v72 >= v71)
      {
        v73 = __DataStorage._bytes.getter();
        if (!v73)
        {
          a1 = MEMORY[0x1AC57AAA0]();
          v11 = 0;
          v10 = 0;
          goto LABEL_182;
        }

        v74 = v73;
        v75 = __DataStorage._offset.getter();
        if (!__OFSUB__(v71, v75))
        {
          v39 = (v71 - v75 + v74);
LABEL_123:
          a1 = MEMORY[0x1AC57AAA0]();
          if (a1 >= v40)
          {
            v76 = v40;
          }

          else
          {
            v76 = a1;
          }

          v10 = v76 / 8;
          if (v39)
          {
            v11 = v39;
          }

          else
          {
            v11 = 0;
          }

          if (!v39)
          {
            v10 = 0;
          }

          goto LABEL_182;
        }

        goto LABEL_207;
      }

      goto LABEL_193;
    }

LABEL_49:
    if (v9 != 2)
    {
      v10 = 0;
      v11 = &v106;
      goto LABEL_182;
    }

    v37 = *(v7 + 16);
    v38 = *(v7 + 24);
    a1 = __DataStorage._bytes.getter();
    v39 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      v7 = v37 - a1;
      if (__OFSUB__(v37, a1))
      {
LABEL_200:
        __break(1u);
        goto LABEL_201;
      }

      v39 = (v39 + v7);
    }

    v27 = __OFSUB__(v38, v37);
    v40 = v38 - v37;
    if (!v27)
    {
      goto LABEL_123;
    }

    __break(1u);
    goto LABEL_56;
  }

  if (*(v3 + 1))
  {
    if (v6 != 1)
    {
      if (v9 <= 1)
      {
        if (v9)
        {
          v65 = v7;
          v66 = v7 >> 32;
          v36 = v66 - v65;
          if (v66 < v65)
          {
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
            goto LABEL_194;
          }

          v67 = __DataStorage._bytes.getter();
          if (v67)
          {
            v68 = v67;
            v69 = __DataStorage._offset.getter();
            if (__OFSUB__(v65, v69))
            {
LABEL_206:
              __break(1u);
LABEL_207:
              __break(1u);
              goto LABEL_208;
            }

            v35 = (v65 - v69 + v68);
LABEL_108:
            a1 = MEMORY[0x1AC57AAA0]();
            if (a1 >= v36)
            {
              v70 = v36;
            }

            else
            {
              v70 = a1;
            }

            v18 = v70 / 4;
            if (v35)
            {
              v19 = v35;
            }

            else
            {
              v19 = 0;
            }

            if (!v35)
            {
              v18 = 0;
            }

            goto LABEL_180;
          }

          a1 = MEMORY[0x1AC57AAA0]();
          v19 = 0;
          v18 = 0;
        }

        else
        {
          v18 = (v8 >> 50) & 0x3F;
          v19 = &v106;
        }

LABEL_180:
        v106 = v19;
        v107 = v18;
        MEMORY[0x1EEE9AC00](a1);
        v104 = a2;
        v105 = a3;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys6UInt32VGMd, &_sSRys6UInt32VGMR);
        v96 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt32> and conformance UnsafeBufferPointer<A>, &_sSRys6UInt32VGMd, &_sSRys6UInt32VGMR);
        v98 = MEMORY[0x1E69E73E0];
        v99 = MEMORY[0x1E69E7410];
        v100 = partial apply for closure #6 in Npy.makeArray<A>(type:);
        goto LABEL_189;
      }

LABEL_42:
      if (v9 == 2)
      {
        v33 = *(v7 + 16);
        v34 = *(v7 + 24);
        a1 = __DataStorage._bytes.getter();
        v35 = a1;
        if (a1)
        {
          a1 = __DataStorage._offset.getter();
          v7 = v33 - a1;
          if (__OFSUB__(v33, a1))
          {
LABEL_199:
            __break(1u);
            goto LABEL_200;
          }

          v35 = (v35 + v7);
        }

        v27 = __OFSUB__(v34, v33);
        v36 = v34 - v33;
        if (v27)
        {
          __break(1u);
          goto LABEL_49;
        }

        goto LABEL_108;
      }

      v18 = 0;
      v19 = &v106;
      goto LABEL_180;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        v12 = (v8 >> 49) & 0x7F;
        v13 = &v106;
LABEL_178:
        v106 = v13;
        v107 = v12;
        MEMORY[0x1EEE9AC00](a1);
        v104 = a2;
        v105 = a3;
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys6UInt16VGMd, &_sSRys6UInt16VGMR);
        v96 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt16> and conformance UnsafeBufferPointer<A>, &_sSRys6UInt16VGMd, &_sSRys6UInt16VGMR);
        v98 = MEMORY[0x1E69E73E0];
        v99 = MEMORY[0x1E69E7410];
        v100 = partial apply for closure #4 in Npy.makeArray<A>(type:);
        goto LABEL_189;
      }

      v59 = v7;
      v60 = v7 >> 32;
      v32 = v60 - v59;
      if (v60 < v59)
      {
LABEL_191:
        __break(1u);
        goto LABEL_192;
      }

      v61 = __DataStorage._bytes.getter();
      if (!v61)
      {
        a1 = MEMORY[0x1AC57AAA0]();
        v13 = 0;
        v12 = 0;
        goto LABEL_178;
      }

      v62 = v61;
      v63 = __DataStorage._offset.getter();
      if (__OFSUB__(v59, v63))
      {
LABEL_205:
        __break(1u);
        goto LABEL_206;
      }

      v31 = (v59 - v63 + v62);
      goto LABEL_95;
    }

LABEL_35:
    if (v9 != 2)
    {
      v12 = 0;
      v13 = &v106;
      goto LABEL_178;
    }

    v29 = *(v7 + 16);
    v30 = *(v7 + 24);
    a1 = __DataStorage._bytes.getter();
    v31 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      v7 = v29 - a1;
      if (__OFSUB__(v29, a1))
      {
LABEL_198:
        __break(1u);
        goto LABEL_199;
      }

      v31 = (v31 + v7);
    }

    v27 = __OFSUB__(v30, v29);
    v32 = v30 - v29;
    if (!v27)
    {
LABEL_95:
      a1 = MEMORY[0x1AC57AAA0]();
      if (a1 >= v32)
      {
        v64 = v32;
      }

      else
      {
        v64 = a1;
      }

      v12 = v64 / 2;
      if (v31)
      {
        v13 = v31;
      }

      else
      {
        v13 = 0;
      }

      if (!v31)
      {
        v12 = 0;
      }

      goto LABEL_178;
    }

    __break(1u);
    goto LABEL_42;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      v16 = 0;
      v17 = &v106;
      goto LABEL_176;
    }

    v24 = *(v7 + 16);
    v25 = *(v7 + 24);
    a1 = __DataStorage._bytes.getter();
    v26 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      v7 = v24 - a1;
      if (__OFSUB__(v24, a1))
      {
LABEL_197:
        __break(1u);
        goto LABEL_198;
      }

      v26 = (v26 + v7);
    }

    v27 = __OFSUB__(v25, v24);
    v28 = v25 - v24;
    if (!v27)
    {
      goto LABEL_81;
    }

    __break(1u);
    goto LABEL_35;
  }

  if (!v9)
  {
    v16 = BYTE6(v8);
    v17 = &v106;
    goto LABEL_176;
  }

LABEL_77:
  v54 = v7;
  v55 = v7 >> 32;
  v28 = v55 - v54;
  if (v55 < v54)
  {
    __break(1u);
    goto LABEL_191;
  }

  v56 = __DataStorage._bytes.getter();
  if (v56)
  {
    v57 = v56;
    v58 = __DataStorage._offset.getter();
    if (__OFSUB__(v54, v58))
    {
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    v26 = (v54 - v58 + v57);
LABEL_81:
    a1 = MEMORY[0x1AC57AAA0]();
    if (a1 >= v28)
    {
      v16 = v28;
    }

    else
    {
      v16 = a1;
    }

    if (v26)
    {
      v17 = v26;
    }

    else
    {
      v17 = 0;
    }

    if (!v26)
    {
      v16 = 0;
    }

    goto LABEL_176;
  }

  a1 = MEMORY[0x1AC57AAA0]();
  v17 = 0;
  v16 = 0;
LABEL_176:
  v106 = v17;
  v107 = v16;
  MEMORY[0x1EEE9AC00](a1);
  v104 = a2;
  v105 = a3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  v96 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  v98 = MEMORY[0x1E69E73E0];
  v99 = MEMORY[0x1E69E7410];
  v100 = partial apply for closure #2 in Npy.makeArray<A>(type:);
LABEL_189:
  v106 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v100, &v103, v95, a2, v98, v96, v99, v97);
  type metadata accessor for Array();
  swift_getWitnessTable();
  result = Array.init<A>(_:)();
  v102 = *MEMORY[0x1E69E9840];
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized RangeReplaceableCollection.removeFirst(_:)(uint64_t result)
{
  if (result)
  {
    v2 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      if ((v1[1] & 0x2000000000000000) == 0)
      {
        v4 = *v1;
      }

      result = String.index(_:offsetBy:limitedBy:)();
      if ((v2 & 1) == 0)
      {
        v5 = result;
        result = 15;
        v2 = v5;

        return MEMORY[0x1EEE68E00](result, v2);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v2);
  }

  return result;
}

uint64_t specialized static Npy.Header.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 8);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 8);
  if (specialized == infix<A>(_:_:)(*a1, *a2) & 1) == 0 || (specialized == infix<A>(_:_:)(v2, v5) & 1) == 0 || ((v3 ^ v6))
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v4, v7);
}

uint64_t specialized static Npy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 8);
  v14 = *(a1 + 24);
  v15 = *(a1 + 16);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *a2;
  v11 = *a1;

  if ((specialized == infix<A>(_:_:)(v11, v10) & 1) == 0 || (specialized == infix<A>(_:_:)(v2, v5) & 1) == 0 || v3 != v6)
  {

    return 0;
  }

  v13 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v4, v7);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v15, v14, v8, v9);
}

uint64_t specialized static StringProtocol.== infix<A>(_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #14 in Npy.makeArray<A>(type:)(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  v4 = *(v1 + 16);
  return dispatch thunk of BinaryFloatingPoint.init(_:)();
}